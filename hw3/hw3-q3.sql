<<<<<<< HEAD
select t1.origin_city, (100.0 * shorterFlights / totalFlights) as percentage
from	(select f1.origin_city, count(*) as totalFlights 
=======
-- number rows: 327
-- time: 16s
-- first 20: 
-- "Guam TT",
-- "Pago Pago TT",
-- "Aguadilla PR",29.4339622641509
-- "Anchorage AK",32.1460373998219
-- "San Juan PR",33.890360709191
-- "Charlotte Amalie VI",40.0
-- "Ponce PR",41.9354838709677
-- "Fairbanks AK",50.6912442396313
-- "Kahului HI",53.664998528113
-- "Honolulu HI",54.9088086922778
-- "San Francisco CA",56.3076568265683
-- "Los Angeles CA",56.6041076487252
-- "Seattle WA",57.7554165533497
-- "Long Beach CA",62.4541164132145
-- "Kona HI",63.2821075740944
-- "New York NY",63.481519772551
-- "Las Vegas NV",65.163009288384
-- "Christiansted VI",65.3333333333333
-- "Newark NJ",67.1373555840822
-- "Worcester MA",67.741935483871

select t1.origin_city, (100.0 * shorterFlights / allFlights) as percentage
from	(select f1.origin_city, count(*) as allFlights 
>>>>>>> origin/master
		from Flights f1
		group by f1.origin_city) t1
		left outer join
		(select f1.origin_city, count(*) as shorterFlights
		from Flights f1
		where f1.actual_time < 180 or f1.actual_time = NULL
		group by f1.origin_city) t2
		on t1.origin_city = t2.origin_city
<<<<<<< HEAD
order by percentage;
=======
order by percentage;

>>>>>>> origin/master
