-- 3 lines in query result
SELECT DISTINCT f.flight_num from Flights f 
JOIN Carriers c ON c.cid = f.carrier_id
JOIN Weekdays w ON w.did = f.day_of_week_id
WHERE c.name = 'Alaska Airlines Inc.'
AND origin_city = 'Seattle WA'
AND dest_city = 'Boston MA'
AND w.day_of_week = 'Monday';

--flight_num
--12
--24
--734


