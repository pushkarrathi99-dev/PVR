#Script to Add Data in Tables from here
USE AirlinesSystemdb;

        
INSERT INTO Airplane_T (AirplaneID_pk, CapacityPassenger, CapacityCargo, Manufacturer, PriceOfPlane, YearOfManufacturing) 
VALUES (1001, 200, 1000, 'Boeing', 100000000, 2015),
(1002, 150, 800, 'Airbus', 95000000, 2018),
(1003, 220, 1100, 'Embraer', 85000000, 2017),
(1004, 250, 1200, 'Cessna', 70000000, 2019),
(1005, 190, 950, 'Dassault', 90000000, 2014),
(1006, 280, 1300, 'Gulfstream', 110000000, 2013),
(1007, 240, 1150, 'Pilatus', 95000000, 2016),
(1008, 260, 1250, 'ATR', 80000000, 2017);

INSERT INTO airportCity_T (Abbreviation, CityName) VALUES
    ('BOM', 'Mumbai'),
    ('DEL', 'Delhi'),
    ('HYD', 'Hyderabad'),
    ('DXB', 'Dubai'),
    ('SIN', 'Singapore'),
    ('JFK', 'New York City'),
    ('LAX', 'Los Angeles'),
    ('SFO', 'San Francisco'),
    ('ORD', 'Chicago'),
    ('MIA', 'Miami'),
    ('DFW', 'Dallas-Fort Worth'),
    ('LAS', 'Las Vegas'),
    ('DEN', 'Denver'),
    ('ATL', 'Atlanta'),
    ('BOS', 'Boston'),
    ('SEA', 'Seattle'),
    ('PHX', 'Phoenix'),
    ('DCA', 'Washington, D.C.'),
    ('IAH', 'Houston'),
    ('MCO', 'Orlando'),
    ('MSY', 'New Orleans'),
    ('SAN', 'San Diego'),
    ('MSP', 'Minneapolis'),
    ('SJC', 'San Jose'),
    ('PDX', 'Portland'),
    ('STL', 'St. Louis');
    
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


INSERT INTO Flight_T VALUES (111, 1008, 'JL583', '12:00', '17:30'),
    (121, 1001, 'OM267', '06:00', '10:00'),
    (131, 1002, 'BS492', '11:00', '17:00'),
    (141, 1003, 'DS741', '19:00', '22:00'),
    (151, 1004, 'AL359', '13:00', '17:00'),
    (161, 1005, 'DJ672', '22:00', '01:00'),
    (171, 1006, 'IO428', '17:00', '20:00'),
    (181, 1007, 'LS196', '07:00', '09:00'),
    (191, 1008, 'ML873', '08:00', '14:00'),
    (221, 1001, 'JM725', '12:00', '15:00'),
    (222, 1002, 'SP164', '09:00', '11:00'),
    (223, 1003, 'OD937', '05:00', '08:00'),
    (224, 1004, 'LJ825', '23:00', '05:00'),
    (225, 1005, 'SO481', '21:00', '01:30'),
    (226, 1006, 'MD369', '23:00', '02:00'),
    (227, 1007, 'BA539', '10:30', '15:00'),
    (228, 1008, 'DI247', '12:30', '15:30'),
    (229, 1001, 'LL365', '09:30', '11:30'),
    (100, 1002, 'SS839', '07:30', '09:30'),
    (200, 1003, 'MJ713', '11:30', '14:30');
        

    
INSERT INTO Discount_T VALUES ('FFO', 20, 'First time flying offer'),
    ('TD391', 5, 'Thanksgiving discount'),
    ('AIR500', 5, 'Flying to locations like Alaska, Delaware, Vermont'),
    ('FS100', 0, 'Free snack on tickets above $100'),
    ('MX562', 15, 'Christmas holiday discount'),
    ('GD15', 10, 'Family discount if more than 10 adults'),
    ('STUD555', 7, 'Student discount'),
    ('ARMY555', 5, 'Veteran discount'),
    ('EARLYB6', 6, 'If booking before 6 months'),
    ('SZ65', 4, 'If above 65 years of age'),
    ('10OFF', 10, '10 percent OFF for select routes'),
    ('DEC5', 5, '5% OFF for early bird booking');
    
    

    
INSERT INTO BookingSource_T  VALUES (1001, 'Booking.com'),
(1002, 'Expedia'),
(1003, 'Hotels.com'),
(1004, 'Agoda'),
(1005, 'TripAdvisor'),
(1006, 'Airbnb'),
(1007, 'Kayak'),
(1008, 'Priceline'),
(1009, 'Orbitz'),
(1010, 'Travelocity');


insert into Customer_T(CustomerID_pk,Cust_First_Name,Cust_Last_Name,Cust_EmailID,Cust_Phone,Cust_age,PassportNo,Membership_Stat,Cust_Address)
values(201,'Keanu','Reeves','realjohnwick@kr.com',9452740001,59,'V1463096','Platinum','Los Angeles, California'),
(202,'Leonardo','DiCaprio','wolfofthewallstreet@ld.com',9452740018,48,'C1474096','Gold','Los Angeles, California'),
(203,'Robert','Downey','ironman@avengers.com',9452740045,58,'R1466696','Silver','Malibu, California'),
(204,'Johnny','Depp','willywonka@choc.com',9452740007,60,'J1538096','Gold','Nashville, Tennessee'),
(205,'Tom','Cruise','ethanhunt@mi.com',9452740010,61,'T1536386','Platinum','Louisville, Kentucky'),
(206,'John', 'Smith', 'john.smith@email.com', 5551234567, 30, 'A4123456', 'Gold', 'Dallas, Texas'),
(207,'Sarah', 'Johnson', 'sarah.johnson@email.com', 5559876543, 25, 'X7789012', 'Silver', 'San Diego, California'),
(208,'Michael', 'Davis', 'michael.davis@email.com', 5555555555, 35, 'D9456789', 'Platinum', 'Tucson, Arizona'),
(209,'Emily', 'Wilson', 'emily.wilson@email.com', 5552345678, 28, 'G9123789', 'Silver', 'Boston, Massachusetts'),
(210, 'David', 'Anderson', 'david.anderson@email.com', 5558765432, 40, 'J5789012', 'Gold', 'New York City, New York');


#SET FOREIGN_KEY_CHECKS=0;
#pending
#delete FROM Baggage_T;
INSERT INTO Baggage_T (BaggageID_pk,Number_Bags, Weight_Bags, CustomerID) VALUES
(1,2, 30, 201),
(2,1, 15, 202),
(3,3, 40, 203),
(4,2, 35, 204),
(5,1, 20, 205),
(6,4, 60, 206),
(7,2, 25, 207),
(8,1, 10, 208),
(9,3, 45, 209),
(10,2, 35, 210);


insert into Lounges_T values(1, 'Adani Lounge'),
(2, 'Reliance Lounge'),
(3, 'Tata Lounge'),
(4, 'Airport Lounge');

insert into airport_t(AirportName,AirportCity,AirportState,AirportCountry,AirportStripsNo,LoungeID) values
('Los Angeles International Airport', 'LAX', 'California', 'USA', 4, 2),
("O'Hare International Airport ", 'ORD', 'Illinois', 'USA', 7, 4),
('Miami International Airport', 'MIA', 'Florida', 'USA', 4, 3),
('Boston Logan International Airpor', 'BOS', 'Massachusetts', 'USA', 6, 1),
('San Francisco International Airport', 'SFO', 'California', 'USA', 4, 4),
('Denver International Airport', 'DEN', 'Colorado', 'USA', 6, 1),
('Seattle-Tacoma International Airport', 'SEA', 'Washington', 'USA', 3, 2),
('Hartsfield-Jackson Atlanta International Airport', 'ATL', 'Georgia', 'USA', 5, 4),
('McCarran International Airport', 'LAS', 'Nevada', 'USA', 3, 3),
('Ronald Reagan Washington National Airport', 'DCA', 'District of Columbia (D.C.)', 'USA', 6, 2),
('George Bush Intercontinental Airport', 'IAH', 'Texas', 'USA', 5, 1),
('Orlando International Airport', 'MCO', 'Florida', 'USA', 4, 4),
('Phoenix Sky Harbor International Airport', 'PHX', 'Arizona', 'USA', 5, 4),
('Louis Armstrong New Orleans International Airport', 'MSY', 'Louisiana', 'USA', 4, 3),
('San Diego International Airport', 'SAN', 'California', 'USA', 5, 4);


insert into foodchoice_t values (1, 'Pasta', 'Veg', 'Soft Drinks'),
(null, 'Paneer Masala', 'Veg', 'Juice'),
(null, 'Chicken Masala', 'Non-Veg', 'Tea'),
(null, 'Noodles', 'Non-Veg', 'Beer'),
(null, 'Sandwitch', 'Veg', 'Juice');

INSERT INTO Payment_T values('1111',70,'card','STUD555'),
('5555',64,'card',null),
('2221',81,'Paypal', null),
('2222',69,'card','STUD555'),
('3331',77,'Paypal','10OFF'),
('3332',80,'card',null),
('3333',61,'Apple Pay',null),
('4441',64,'card','DEC5'),
('4442',70,'Paypal',null),
('4443',64,'Apple Pay',null),
(4444,540,'card','10OFF'),
(5551,140,'card','DEC5'),
(5552,180,'Paypal', NULL),
(5553,900,'card',NULL),
(5554,1990,'Paypal','DEC5');

#pending
#class_T
insert into Class_T values('ECO','ECONOMY','TELEVISION'),
('BUS','BUSINESS','TELEVISION,Wi-Fi'),
('FST','FIRST','TELEVISION,Wi-Fi,Videogame');


INSERT INTO Booking_T (BookingId_pk, FlightNo_fk, Date_Of_Travel, CustomerId_fk, ClassID_fk, Seat_No, BookingSourceId_fk, FoodId_fk, PaymentId_fk) VALUES
(1, 121, '2023-11-01', 201, 'ECO', 'A1',1003,2,1111),
(2, 200, '2023-11-02', 202, 'BUS', 'B2',1002,4,2221),
(3, 221, '2023-11-03', 203, 'FST', 'C3',1007,5,2222),
(4, 227, '2023-11-04', 204, 'ECO', 'D4',1003,1,3331),
(5, 171, '2023-11-05', 205, 'BUS', 'E5',1006,2,3332),
(6, 191, '2023-11-06', 206, 'FST', 'F6',1002,3,3333),
(7, 222, '2023-11-07', 207, 'ECO', 'G7',1005,5,4441),
(8, 141, '2023-11-08', 208, 'BUS', 'H8',1004,2,4442),
(9, 200, '2023-11-09', 209, 'FST', 'I9',1003,1,4443),
(10, 100, '2023-11-10', 210, 'ECO', 'J10',1006,4,4444);

#RepairT
insert into RepairType_T(RepairDesc) values 
('Routine Maintenance'),
('Scheduled Maintenance'),
('Unscheduled Maintenance'),
('Line Maintenance'),
('Heavy Maintenance'),
('Avionics Repairs'),
('Structural Repairs'),
('Engine Repairs and Overhauls'),
('Paint and Interior Refurbishment'),
('Corrosion Control'),
('Welding and Composite Repairs'),
('Upgrades and Modifications');

#MaintainanceT
insert into Maintenance_T(StartTime,EndTime,RepairTypeID,RepairCost) values 
('2023-04-10 08:15:00', '2023-04-20 08:15:00', 6, 10000),
('2023-04-15 14:20:00', '2023-04-23 14:20:00', 8,17000),
('2023-04-20 10:45:00', '2023-05-03 10:45:00', 12,50000),
('2023-04-25 13:30:00', '2023-04-26 13:30:00', 1,5000),
('2023-05-01 09:30:00', '2023-05-12 09:30:00', 6,12000),
('2023-05-06 11:20:00', '2023-05-20 11:20:00', 7,25000),
('2023-05-11 15:45:00', '2023-05-30 15:45:00', 5,100000),
('2023-05-16 16:00:00', '2023-05-24 16:00:00', 3,14000),
('2023-05-21 07:10:00', '2023-06-02 07:10:00', 7,18000),
('2023-05-26 12:25:00', '2023-05-27 12:25:00', 1,4000),
('2023-06-03 18:30:00', '2023-06-18 18:30:00', 5, 75000),
('2023-06-08 22:15:00', '2023-06-17 22:15:00', 11,8000),
('2023-06-15 09:40:00', '2023-06-16 09:40:00', 1,6500),
('2023-06-20 14:55:00', '2023-07-04 14:55:00', 9,17000),
('2023-06-25 17:20:00', '2023-07-03 17:20:00', 10,9000);
#pending
/*INSERT INTO Payment_T values('1357',70,'card','STUD555'),
('7913',64,'card',null),
('5791',81,'Paypal', null),
('3579',69,'card','STUD555'),
('2468',77,'Paypal','10OFF'),
('0246',80,'card',null),
('6802',61,'Apple Pay',null),
('4680',64,'card','DEC5'),
('0864',70,'Paypal',null),
('2086',64,'Apple Pay',null),
(1221,540,'card','10OFF'),
(1331,140,'card','DEC5'),
(1441,180,'Paypal', NULL),
(1551,900,'card',NULL),
(1661,1990,'Paypal','DEC5');*/

select * from Payment_T;

#p
INSERT INTO Cargo_T (CargoID_pk, FlightNo, Weight, PaymentID, CustomerID) VALUES
(21, 121, 10.2, 5551, 206), -- weights are in tonnes
(33, 131, 20, 5552, 207),
(38, 141, 35.25, 5553, 208),
(45, 151, 15, 5554, 209),
(55, 161, 37.5, 5555, 210);


#update airport_t set LoungeId = '1' where AirportId_pk = '1';
#update airport_t set LoungeId = '2' where AirportId_pk = '2';
#update airport_t set LoungeId = '3' where AirportId_pk = '3';
#update airport_t set LoungeId = '4' where AirportId_pk = '4';
#update airport_t set LoungeId = '1' where AirportId_pk = '5';
#update airport_t set LoungeId = '2' where AirportId_pk = '6';
#update airport_t set LoungeId = '3' where AirportId_pk = '7';


INSERT INTO Position_T (PositionID_pk, PositionDescription) VALUES
(1, 'Pilot'),
(2, 'Co-Pilot'),
(3, 'Flight Attendant'),
(4, 'Flight Engineer'),
(5, 'Air Traffic Controller');

-- Data for FlightCrew_T table
INSERT INTO FlightCrew_T (FlightCrewID_pk, FlightNumber) VALUES
(101, 121),
(102, 131),
(103, 141),
(104, 151),
(105, 161);

-- Data for Employees_T table
INSERT INTO Employees_T (EmployeeID_pk, EmailID, PositionID_fk, FirstName, LastName, Contact, FlightCrewID_fk) VALUES
(1001, 'john@example.com', 1, 'John', 'Doe', '123-456-7890', 101),
(1002, 'jane@example.com', 3, 'Jane', 'Smith', '234-567-8901', 103),
(1003, 'mike@example.com', 2, 'Mike', 'Johnson', '345-678-9012', 102),
(1004, 'sara@example.com', 4, 'Sara', 'Williams', '456-789-0123', 104),
(1005, 'chris@example.com', 5, 'Chris', 'Brown', '567-890-1234', 105),
(1006, 'emily@example.com', 1, 'Emily', 'Taylor', '678-901-2345', 101),
(1007, 'alex@example.com', 2, 'Alex', 'Anderson', '789-012-3456', 102),
(1008, 'laura@example.com', 3, 'Laura', 'Martin', '890-123-4567', 103),
(1009, 'peter@example.com', 4, 'Peter', 'White', '901-234-5678', 104),
(1010, 'olivia@example.com', 5, 'Olivia', 'Lee', '012-345-6789', 105);


#update airport_t set AirportCity = 'BOM' where AirportId_pk = '1';
#update airport_t set AirportCity = 'DEL' where AirportId_pk = '2';
#update airport_t set AirportCity = 'HYD' where AirportId_pk = '3';
#update airport_t set AirportCity = 'JFK' where AirportId_pk = '4';
#update airport_t set AirportCity = 'DFW' where AirportId_pk = '5';
#update airport_t set AirportCity = 'DXB' where AirportId_pk = '6';
#update airport_t set AirportCity = 'SIN' where AirportId_pk = '7';


 
#insert into airport_t values (null, 'Los Angeles International Airport', 'LAX', 'California', 'USA', '4', '2');
#insert into airport_t values (null, "O'Hare International Airport ", 'ORD', 'Illinois', 'USA', '7', '4');
#insert into airport_t values (null, 'Miami International Airport', 'MIA', 'Florida', 'USA', '4', '3');
#insert into airport_t values (null, 'Boston Logan International Airpor', 'BOS', 'Massachusetts', 'USA', '6', '1');
#insert into airport_t values (null, 'San Francisco International Airport', 'SFO', 'California', 'USA', '4', '4');
#insert into airport_t values (null, 'Denver International Airport', 'DEN', 'Colorado', 'USA', '6', '1');
 
#insert into airport_t values (null, 'Seattle-Tacoma International Airport', 'SEA', 'Washington', 'USA', '3', '2');
#insert into airport_t values (null, 'Hartsfield-Jackson Atlanta International Airport', 'ATL', 'Georgia', 'USA', '5', '4');
#insert into airport_t values (null, 'McCarran International Airport', 'LAS', 'Nevada', 'USA', '3', '3');
#insert into airport_t values (null, 'Ronald Reagan Washington National Airport', 'DCA', 'District of Columbia (D.C.)', 'USA', '6', '2');
#insert into airport_t values (null, 'George Bush Intercontinental Airport', 'IAH', 'Texas', 'USA', '5', '1');
#insert into airport_t values (null, 'Orlando International Airport', 'MCO', 'Florida', 'USA', '4', '4');
 
#insert into airport_t values (null, 'Phoenix Sky Harbor International Airport', 'PHX', 'Arizona', 'USA', '5', '4');
#insert into airport_t values (null, 'Louis Armstrong New Orleans International Airport', 'MSY', 'Louisiana', 'USA', '4', '3');
#insert into airport_t values (null, 'San Diego International Airport', 'SAN', 'California', 'USA', '5', '4');

