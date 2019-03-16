<<<<<<< HEAD
select distinct f.origin_city, f.dest_city, f.actual_time
=======
-- number rows: 334
-- time: 17s
-- first 20:
-- "Aberdeen SD","Minneapolis MN",106
-- "Abilene TX","Dallas/Fort Worth TX",111
-- "Adak Island AK","Anchorage AK",471
-- "Aguadilla PR","New York NY",368
-- "Akron OH","Atlanta GA",408
-- "Albany GA","Atlanta GA",243
-- "Albany NY","Atlanta GA",390
-- "Albuquerque NM","Houston TX",492
-- "Alexandria LA","Atlanta GA",391
-- "Allentown/Bethlehem/Easton PA","Atlanta GA",456
-- "Alpena MI","Detroit MI",80
-- "Amarillo TX","Houston TX",390
-- "Anchorage AK","Barrow AK",490
-- "Appleton WI","Atlanta GA",405
-- "Arcata/Eureka CA","San Francisco CA",476
-- "Asheville NC","Chicago IL",279
-- "Ashland WV","Cincinnati OH",84
-- "Aspen CO","Los Angeles CA",304
-- "Atlanta GA","Honolulu HI",649
-- "Atlantic City NJ","Fort Lauderdale FL",212

select distinct f.origin_city, f.dest_city, f.actual_time as time
>>>>>>> origin/master
from Flights f JOIN 
(select origin_city, max(actual_time) max from Flights
Group by origin_city) c
ON c.origin_city = f.origin_city AND
<<<<<<< HEAD
f.actual_time = c.max
=======
f.actual_time = c.max
order by f.origin_city, f.dest_city;

>>>>>>> origin/master
