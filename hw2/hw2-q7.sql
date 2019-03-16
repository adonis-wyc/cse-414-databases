--1 row 
SELECT SUM(capacity) capacity
FROM Flights
WHERE origin_city = "Seattle WA"
AND dest_city = "San Francisco CA"
AND day_of_month = 10
AND month_id = 7;
