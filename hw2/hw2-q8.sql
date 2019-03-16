-- 22 rows
SELECT name AS carrier, SUM(departure_delay) delay
FROM Flights f JOIN Carriers c ON f.carrier_id = c.cid
GROUP BY carrier;

