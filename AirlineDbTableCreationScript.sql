CREATE DATABASE IF NOT EXISTS AirlinesSystemdb;
USE AirlinesSystemdb;

/*
DROP TABLE IF EXISTS Flight_T;
DROP TABLE IF EXISTS Airplane_T;
DROP TABLE IF EXISTS Route_T;
DROP TABLE IF EXISTS Flight_T;
DROP TABLE IF EXISTS Discount_T;
Drop table if exists Baggage_T;
Drop table if exists Customer_T;
Drop table if exists Airport_T;
Drop table if exists FoodChoice_T;
DROP TABLE IF EXISTS BookingSource_T;
DROP TABLE IF EXISTS Booking_T;
drop table if exists Payment_T;
DROP TABLE IF EXISTS Cargo_T;
DROP TABLE IF EXISTS Lounges_T;
DROP TABLE IF EXISTS Position_T;
DROP TABLE IF EXISTS FlightCrew_T;
DROP TABLE IF EXISTS Employees_T;
DROP TABLE IF EXISTS Class_T;
Drop table if exists RepairType_T;
Drop table if exists Maintenance_T;
*/
CREATE TABLE Airplane_T ( 
    AirplaneID_pk INT AUTO_INCREMENT PRIMARY KEY,
    CapacityPassenger INT,
    CapacityCargo INT,
    Manufacturer VARCHAR(255),
    PriceOfPlane INT,
    YearOfManufacturing INT
);


create table airportcity_T  (
    Abbreviation VARCHAR(3) NOT NULL,
    CityName VARCHAR(255) NOT NULL,
    PRIMARY KEY (Abbreviation)
);

CREATE TABLE Route_T (
    RouteID_pk VARCHAR(6),
    SourceID VARCHAR(25),
    DestinationID VARCHAR(25),
    Distance INT,
    PRIMARY KEY(RouteID_pk),
    foreign key (SourceID) references AirportCity_T(Abbreviation),
    foreign key (DestinationID) references AirportCity_T(Abbreviation)
    );

CREATE TABLE IF NOT EXISTS Flight_T (
	FlightNo_pk INT,
    AirplaneID INT,
    RouteID VARCHAR(6),
    Depart_time TIME,
    Arrival_time TIME,
    PRIMARY KEY(FlightNo_pk),
    FOREIGN KEY(AirplaneID) REFERENCES Airplane_T(AirplaneID_pk),
    FOREIGN KEY(RouteID) REFERENCES Route_T(RouteID_pk)
    );


CREATE TABLE Discount_T (
    Code_pk VARCHAR(10),
    Percent INT,
    About VARCHAR(50),
    PRIMARY KEY(Code_pk)
    );


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


Create table Baggage_T(
BaggageID_pk int primary key auto_increment,
Number_Bags int,
Weight_Bags int,
CustomerID int,
foreign key (CustomerID) references Customer_T(CustomerID_pk)
);


create table Lounges_T (
LoungeId int  primary key,
LoungeName varchar(100) not null);

create table Airport_T (
AirportId_pk int primary key not null auto_increment,
AirportName varchar(100) not null,
AirportCity varchar(100) not null,
AirportState varchar(100) not null,
AirportCountry varchar(100) not null,
AirportStripsNo int not null,
LoungeID INT,
foreign key (AirportCity) references AirportCity_T(Abbreviation),
foreign key (LoungeId) references Lounges_T (LoungeId));


create table FoodChoice_T (
FoodId_pk int primary key not null auto_increment,
Cuisine varchar(50) not null,
FoodChoice varchar(50) not null,
Drinks varchar(50) not null
);


CREATE TABLE BookingSource_T (
    BookingSourceID_pk INT PRIMARY KEY NOT NULL,
	BookingSourceName VARCHAR(255) NOT NULL
	);
    
CREATE TABLE if not exists Class_T(
    ClassId_pk Varchar(30) primary key not null,
    ClassDesc Varchar(90) not null,
    AminityDesc Varchar(90) not null);

Create table RepairType_T(
RepairTypeID_pk int primary key auto_increment,
RepairDesc varchar(100));


Create table Maintenance_T(
MainID_pk int primary key auto_increment,
StartTime datetime,
EndTime datetime,
RepairTypeID int,
RepairCost int,
foreign key (RepairTypeID) references RepairType_T(RepairTypeID_pk)
);


CREATE TABLE IF NOT EXISTS Payment_T(
	PaymentId_pk int not null,
    Amount int not null,
    Type_Of_Payment varchar(30) not null,
    DiscountId_fk VARCHAR(10),
    primary key(PaymentId_pk),
    FOREIGN KEY (DiscountId_fk) REFERENCES Discount_t(Code_pk)
    );


CREATE TABLE Booking_T(
	BookingId_pk INT NOT NULL,
    FlightNo_fk INT NOT NULL,
    Date_Of_Travel VARCHAR(30) NOT NULL,
    CustomerId_fk INT NOT NULL,
    Seat_No VARCHAR(30) NOT NULL,
    BookingSourceId_fk INT NOT NULL,
    ClassId_fk VARCHAR(30) NOT NULL,
    FoodId_fk INT NOT NULL,
    PaymentId_fk INT NOT NULL,
    PRIMARY KEY(BookingId_pk),
    Foreign Key (FlightNo_fk) references Flight_T(FlightNo_pk),
    FOREIGN KEY (BookingSourceId_fk) REFERENCES BookingSource_T(BookingSourceID_pk),
    FOREIGN KEY (FoodId_fk) REFERENCES foodchoice_t(FoodId_pk),
    FOREIGN KEY (CustomerId_fk) REFERENCES Customer_T(CustomerId_pk),
    FOREIGN KEY (ClassId_fk) REFERENCES Class_T(ClassId_pk),
    foreign key (PaymentID_fk) references Payment_T(PaymentId_pk)
    );

    

CREATE TABLE IF NOT EXISTS Cargo_T(
    CargoID_pk INT,
    FlightNo INT,
    Weight DECIMAL(10, 2),
    PaymentID INT,
    CustomerID INT,
    PRIMARY KEY(CargoID_pk),
    FOREIGN KEY(PaymentID) REFERENCES Payment_T(PaymentID_pk),
    FOREIGN KEY(FlightNo) REFERENCES Flight_T(FlightNo_pk)
);





CREATE TABLE Position_T (
    PositionID_pk INT PRIMARY KEY,
    PositionDescription VARCHAR(255)
);

CREATE TABLE FlightCrew_T (
    FlightCrewID_pk INT PRIMARY KEY,
    FlightNumber INT
);

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


#update airport_t set AirportCity = 'BOM' where AirportId_pk = '1';
#update airport_t set AirportCity = 'DEL' where AirportId_pk = '2';
#update airport_t set AirportCity = 'HYD' where AirportId_pk = '3';
#update airport_t set AirportCity = 'JFK' where AirportId_pk = '4';
#update airport_t set AirportCity = 'DFW' where AirportId_pk = '5';
#update airport_t set AirportCity = 'DXB' where AirportId_pk = '6';
#update airport_t set AirportCity = 'SIN' where AirportId_pk = '7';



 
 



