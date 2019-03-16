--6 rows
SELECT c.name, AVG(f.canceled) percent
FROM Flights f
JOIN Carriers c 
ON c.cid = f.carrier_id
WHERE f.origin_city = 'Seattle WA'
GROUP BY c.cid
HAVING percent > 0.005
ORDER BY percent ASC;
