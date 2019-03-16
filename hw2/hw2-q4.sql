--12 rows
SELECT DISTINCT c.name
FROM Flights f
JOIN Months m 
ON m.mid = f.month_id
JOIN Carriers c 
ON c.cid = f.carrier_id
GROUP BY f.day_of_month, m.month, c.name
HAVING COUNT(*) > 1000;
