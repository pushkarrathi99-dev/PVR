CREATE DATABASE IF NOT EXISTS AirlinesSystemdb;
USE AirlinesSystemdb;


DROP TABLE IF EXISTS Flight_T;
DROP TABLE IF EXISTS Airplane_T;
CREATE TABLE Airplane_T (
    AirplaneID_pk INT AUTO_INCREMENT PRIMARY KEY,
    CapacityPassenger INT,
    CapacityCargo INT,
    Manufacturer VARCHAR(255),
    PriceOfPlane INT,
    YearOfManufacturing INT
);
        
INSERT INTO Airplane_T (AirplaneID_pk, CapacityPassenger, CapacityCargo, Manufacturer, PriceOfPlane, YearOfManufacturing) 
VALUES (1001, 200, 1000, 'Boeing', 100000000, 2015);
INSERT INTO Airplane_T (AirplaneID_pk, CapacityPassenger, CapacityCargo, Manufacturer, PriceOfPlane, YearOfManufacturing) 
VALUES (1002, 150, 800, 'Airbus', 95000000, 2018);
INSERT INTO Airplane_T (AirplaneID_pk, CapacityPassenger, CapacityCargo, Manufacturer, PriceOfPlane, YearOfManufacturing) 
VALUES (1003, 220, 1100, 'Embraer', 85000000, 2017);
INSERT INTO Airplane_T (AirplaneID_pk, CapacityPassenger, CapacityCargo, Manufacturer, PriceOfPlane, YearOfManufacturing) 
VALUES (1004, 250, 1200, 'Cessna', 70000000, 2019);
INSERT INTO Airplane_T (AirplaneID_pk, CapacityPassenger, CapacityCargo, Manufacturer, PriceOfPlane, YearOfManufacturing) 
VALUES (1005, 190, 950, 'Dassault', 90000000, 2014);
INSERT INTO Airplane_T (AirplaneID_pk, CapacityPassenger, CapacityCargo, Manufacturer, PriceOfPlane, YearOfManufacturing) 
VALUES (1006, 280, 1300, 'Gulfstream', 110000000, 2013);
INSERT INTO Airplane_T (AirplaneID_pk, CapacityPassenger, CapacityCargo, Manufacturer, PriceOfPlane, YearOfManufacturing) 
VALUES (1007, 240, 1150, 'Pilatus', 95000000, 2016);
INSERT INTO Airplane_T (AirplaneID_pk, CapacityPassenger, CapacityCargo, Manufacturer, PriceOfPlane, YearOfManufacturing) 
VALUES (1008, 260, 1250, 'ATR', 80000000, 2017);


CREATE TABLE Flight_T (
	FlightNo_pk VARCHAR(6),
    AirplaneID INT,
    RouteID VARCHAR(6),
    Depart_time TIME,
    Arrival_time TIME,
    PRIMARY KEY(FlightNo_pk),
    FOREIGN KEY(AirplaneID) REFERENCES Airplane_T(AirplaneID_pk)
    );
INSERT INTO Flight_T VALUES (111, '1008', 'JL583', '12:00', '17:30'),
    (121, '1001', 'OM267', '06:00', '10:00'),
    (131, '1002', 'BS492', '11:00', '17:00'),
    (141, '1003', 'DS741', '19:00', '22:00'),
    (151, '1004', 'AL359', '13:00', '17:00'),
    (161, '1005', 'DJ672', '22:00', '01:00'),
    (171, '1006', 'IO428', '17:00', '20:00'),
    (181, '1007', 'LS196', '07:00', '09:00'),
    (191, '1008', 'ML873', '08:00', '14:00'),
    (221, '1001', 'JM725', '12:00', '15:00'),
    (222, '1002', 'SP164', '09:00', '11:00'),
    (223, '1003', 'OD937', '05:00', '08:00'),
    (224, '1004', 'LJ825', '23:00', '05:00'),
    (225, '1005', 'SO481', '21:00', '01:30'),
    (226, '1006', 'MD369', '23:00', '02:00'),
    (227, '1007', 'BA539', '10:30', '15:00'),
    (228, '1008', 'DI247', '12:30', '15:30'),
    (229, '1001', 'LL365', '09:30', '11:30'),
    (100, '1002', 'SS839', '07:30', '09:30'),
    (200, '1003', 'MJ713', '11:30', '14:30');
        
    
DROP TABLE IF EXISTS Route_T;
CREATE TABLE Route_T (
    RouteID_pk VARCHAR(6),
    SourceID VARCHAR(25),
    DestinationID VARCHAR(25),
    Distance INT,
    PRIMARY KEY(RouteID_pk)
    );
    
INSERT INTO Route_T VALUES ('JL583', 'JFK', 'LAX', 2500),
    ('OM267', 'ORD', 'MIA', 1200),
    ('BS492', 'BOS', 'SFO', 2750),
    ('DS741', 'DEN', 'SEA', 1050),
    ('AL359', 'ATL', 'LAS', 1800),
    ('DJ672', 'DFW', 'JFK', 1400),
    ('IO428', 'IAH', 'ORD', 950),
    ('LS196', 'LAX', 'SFO', 350),
    ('ML873', 'MCO', 'LAX', 2200),
    ('JM725', 'JFK', 'MIA', 1100),
    ('SP164', 'SEA', 'PHX', 1100),
    ('OD937', 'ORD', 'DFW', 800),
    ('LJ825', 'LAS', 'JFK', 2200),
    ('SO481', 'SFO', 'ORD', 1850),
    ('MD369', 'MIA', 'DCA', 950),
    ('BA539', 'BOS', 'ATL', 1000),
    ('DI247', 'DEN', 'IAH', 900),
    ('LL365', 'LAX', 'LAS', 250),
    ('SS839', 'SAN', 'SFO', 500),
    ('MJ713', 'MSY', 'JFK', 1200);

DROP TABLE IF EXISTS Discount_T;
CREATE TABLE Discount_T (
    Code_pk VARCHAR(10),
    Percent INT,
    About VARCHAR(50),
    PRIMARY KEY(Code_pk)
    );
    
INSERT INTO Discount_T VALUES ('FFO', 20, 'First time flying offer'),
    ('TD391', 5, 'Thanksgiving discount'),
    ('AIR500', 5, 'Flying to locations like Alaska, Delaware, Vermont'),
    ('FS100', 0, 'Free snack on tickets above $100'),
    ('MX562', 15, 'Christmas holiday discount'),
    ('GD15', 10, 'Family discount if more than 10 adults'),
    ('STUD555', 7, 'Student discount'),
    ('ARMY555', 5, 'Veteran discount'),
    ('EARLYB6', 6, 'If booking before 6 months'),
    ('SZ65', 4, 'If above 65 years of age');
    
    
DROP TABLE IF EXISTS BookingSource_T;
CREATE TABLE BookingSource_T (
    BookingSourceID_pk INT PRIMARY KEY NOT NULL,
	BookingSourceName VARCHAR(255) NOT NULL
	);
INSERT INTO BookingSource_T  VALUES (1001, 'Booking.com');
INSERT INTO BookingSource_T  VALUES (1002, 'Expedia');
INSERT INTO BookingSource_T  VALUES (1003, 'Hotels.com');
INSERT INTO BookingSource_T  VALUES (1004, 'Agoda');
INSERT INTO BookingSource_T  VALUES (1005, 'TripAdvisor');
INSERT INTO BookingSource_T  VALUES (1006, 'Airbnb');
INSERT INTO BookingSource_T  VALUES (1007, 'Kayak');
INSERT INTO BookingSource_T  VALUES (1008, 'Priceline');
INSERT INTO BookingSource_T  VALUES (1009, 'Orbitz');
INSERT INTO BookingSource_T  VALUES (1010, 'Travelocity');


Drop table if exists Baggage_T;
Drop table if exists Customer_T;
CREATE TABLE Customer_T(
CustomerID_pk int primary key auto_increment,
Cust_First_Name varchar(50),
Cust_Last_Name varchar(50),
Cust_EmailID varchar(50 )unique,
Cust_Phone bigint unique,
Cust_age int,
PassportNo varchar(10) unique,
Membership_Stat varchar(20),
Cust_Address varchar(50)
);

insert into Customer_T(Cust_First_Name,Cust_Last_Name,Cust_EmailID,Cust_Phone,Cust_age,PassportNo,Membership_Stat,Cust_Address)
values('Keanu','Reeves','realjohnwick@kr.com',9452740001,59,'V1463096','Platinum','Los Angeles, California'),
('Leonardo','DiCaprio','wolfofthewallstreet@ld.com',9452740018,48,'C1474096','Gold','Los Angeles, California'),
('Robert','Downey','ironman@avengers.com',9452740045,58,'R1466696','Silver','Malibu, California'),
('Johnny','Depp','willywonka@choc.com',9452740007,60,'J1538096','Gold','Nashville, Tennessee'),
('Tom','Cruise','ethanhunt@mi.com',9452740010,61,'T1536386','Platinum','Louisville, Kentucky');


Create table Baggage_T(
BaggageID_pk int primary key auto_increment,
Number_Bags int,
Weight_Bags int,
CustomerID int,
foreign key (CustomerID) references Customer_T(CustomerID_pk)
);


insert  into Baggage_T(Number_Bags,Weight_Bags,CustomerID) 
values (2,38,1),
(2,43,2),
(3,56,3),
(1,19,4),
(3,62,5);


Drop table if exists Airport_T;
create table Airport_T (
AirportId_pk int primary key not null auto_increment,
AirportName varchar(100) not null,
AirportCity varchar(100) not null,
AirportState varchar(100) not null,
AirportCountry varchar(100) not null,
AirportStripsNo int not null);

 
Drop table if exists FoodChoice_T;
create table FoodChoice_T (
FoodId_pk int primary key not null auto_increment,
Cuisine varchar(50) not null,
FoodChoice varchar(50) not null,
Drinks varchar(50) not null
);


insert into airport_t values (1, 'CST international airport', 'Mumbai', 'Maharashtra', 'India', '2');
insert into airport_t values (null,'IG international airport', 'Delhi', 'Delhi', 'India', '2');
insert into airport_t values (null,'RG international airport', 'Hyderabad', 'Telangana', 'India', '1');
insert into airport_t values (null,'JFK international airport', 'New York', 'New York', 'USA', '2');
insert into airport_t values (null,'DFW international airport', 'Dallas', 'Texas', 'USA', '2');
insert into airport_t values (null,'Dubai international airport', 'Dubai', 'Dubai', 'UAE', '2');
insert into airport_t values (null,'Changi international airport', 'Singapore', 'Singapore', 'Singapore', '2');


insert into foodchoice_t values (1, 'Pasta', 'Veg', 'Soft Drinks');
insert into foodchoice_t values (null, 'Paneer Masala', 'Veg', 'Juice');
insert into foodchoice_t values (null, 'Chicken Masala', 'Non-Veg', 'Tea');
insert into foodchoice_t values (null, 'Noodles', 'Non-Veg', 'Beer');
insert into foodchoice_t values (null, 'Sandwitch', 'Veg', 'Juice');

DROP TABLE IF EXISTS Booking_T;
CREATE TABLE Booking_T(
BookingId_pk INT NOT NULL,
    FlightNo INT NOT NULL,
    Date_Of_Travel VARCHAR(30) NOT NULL,
    CustomerId INT NOT NULL,
    SeatCatogary VARCHAR(30) NOT NULL,
    Seat_No VARCHAR(30) NOT NULL,
    BookingSourceId VARCHAR(30) NOT NULL,
    BaggageId INT NOT NULL,
    FoodId INT NOT NULL,
    PaymentId INT NOT NULL,
    PRIMARY KEY(BookingId_pk)
    );

insert into Booking_T values('134567','111','5-30-2023','4050','ECONOMY','H1','1001','001','1','00031');
insert into Booking_T values('009782','121','8-22-2023','7676','ECONOMY','C6','1002','002','2','00042');
insert into Booking_T values('450789','131','8-22-2023','1918','ECONOMY','C2','1003','003','3','00056');
insert into Booking_T values('664983','141','3-27-2023','1010','ECONOMY','I4','1004','004','4','00091');
insert into Booking_T values('300700','151','6-29-2023','0044','BUSINESS','B02','1005','005','10','00064');
insert into Booking_T values('111102','161','10-03-2023','5566','ECONOMY','A2','1006','006','5','00037');
insert into Booking_T values('747439','171','2-15-2023','9900','BUSINESS','B04','1007','007','11','00022');
insert into Booking_T values('413908','181','7-01-2023','3388','ECONOMY','E3','1008','008','6','00011');
insert into Booking_T values('300701','191','12-23-2023','1313','FIRST','F01','1009','009','20','00047');
insert into Booking_T values('783406','221','11-13-2023','0099','BUSINESS','F5','1010','010','7','00072');

 

 

drop table if exists Payment_T;
CREATE TABLE IF NOT EXISTS Payment_T(
PaymentId_pk int not null,
    Amount varchar(50) not null,
    Type_Of_Payment varchar(30) not null,
    DiscountId int Not Null,
    primary key(PaymentId_pk)
    );


INSERT INTO Payment_T values('1357','70$','card','777');
INSERT INTO Payment_T values('7913','64$','card','111');
INSERT INTO Payment_T values('5791','81$','Paypal','444');
INSERT INTO Payment_T values('3579','69$','card','555');
INSERT INTO Payment_T values('2468','77$','Paypal','666');
INSERT INTO Payment_T values('0246','80$','card','888');
INSERT INTO Payment_T values('6802','61$','Apple Pay','999');
INSERT INTO Payment_T values('4680','64$','card','222');
INSERT INTO Payment_T values('0864','70$','Paypal','333');
INSERT INTO Payment_T values('2086','64$','Apple Pay','000');


CREATE TABLE Employees_T (
    EmployeeID_pk INT PRIMARY KEY,
    EmailID VARCHAR(255),
    PositionID_fk INT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Contact VARCHAR(255),
    FlightCrewID_fk INT,
    FOREIGN KEY (PositionID_fk) REFERENCES Position_T(PositionID_pk),
    FOREIGN KEY (FlightCrewID_fk) REFERENCES FlightCrew_T(FlightCrewID_pk)
);


CREATE TABLE Position_T (
    PositionID_pk INT PRIMARY KEY,
    PositionDescription VARCHAR(255)
);

CREATE TABLE FlightCrew_T (
    FlightCrewID_pk INT,
    FlightNumber INT
);




