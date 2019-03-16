--1 row
SELECT day_of_week, AVG(F.arrival_delay) delay
FROM Flights f
JOIN Weekdays w 
ON w.did = f.day_of_week_id
GROUP BY w.did
LIMIT 1;
