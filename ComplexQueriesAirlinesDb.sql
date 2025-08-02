#Write Complex Queries Here
SELECT * FROM airplane_t; 
SELECT * FROM airport_t; 
SELECT * FROM airportcity; 
SELECT * FROM baggage_t; 
SELECT * FROM booking_t; 
SELECT * FROM bookingsource_t; 
SELECT * FROM cargo_t; 
SELECT * FROM class_t; 
SELECT * FROM customer_t; 
SELECT * FROM discount_t; 
SELECT * FROM employees_t; 
SELECT * FROM flight_t; 
SELECT * FROM flightcrew_t; 
SELECT * FROM foodchoice_t; 
SELECT * FROM lounges_t; 
SELECT * FROM maintenance_t; 
SELECT * FROM payment_t; 
SELECT * FROM position_t; 
SELECT * FROM repairtype_t; 
SELECT * FROM route_t;


#Employees
#flightcrew_t;
#maintenance_t;
#position
#repairtype_t

#give the flight details and passanger details of all the passangers trabelling on flight num 200

select flightNo_fk, depart_time, arrival_time, customerid_fk, Cust_First_Name, Cust_Last_Name
from booking_t b inner join flight_t f on b.FlightNo_fk = f.FlightNo_pk inner join customer_t c
on b.CustomerId_fk = c.CustomerID_pk 
where flightNo_pk = 200;

use airlinessystemdb;
SELECT DISTINCT b1.CustomerId_fk, b1.FlightNo_fk AS FirstFlight, b2.FlightNo_fk AS SecondFlight
FROM Booking_T b1
JOIN Booking_T b2 ON b1.CustomerId_fk = b2.CustomerId_fk AND b1.BookingId_pk <> b2.BookingId_pk
ORDER BY b1.CustomerId_fk;



 #find pairs of employees who are part of the same flight crew.:

SELECT DISTINCT e1.EmployeeID_pk AS Employee1, e1.FirstName AS FirstName1, e1.LastName AS LastName1,
                e2.EmployeeID_pk AS Employee2, e2.FirstName AS FirstName2, e2.LastName AS LastName2,
                e1.FlightCrewID_fk AS FlightCrewID
FROM Employees_T e1
JOIN Employees_T e2 ON e1.FlightCrewID_fk = e2.FlightCrewID_fk AND e1.EmployeeID_pk < e2.EmployeeID_pk
WHERE e1.FlightCrewID_fk IS NOT NULL
ORDER BY e1.FlightCrewID_fk, e1.EmployeeID_pk;
