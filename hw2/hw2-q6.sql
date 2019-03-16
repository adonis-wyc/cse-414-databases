-- 3 lines
SELECT name AS carrier, MAX(price) max_price
FROM Flights f JOIN Carriers c ON f.carrier_id = c.cid
WHERE dest_city = "Seattle WA" AND origin_city = "New York NY" 
OR dest_city = "New York NY" AND origin_city = "Seattle WA"
GROUP BY carrier;

