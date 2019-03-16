<<<<<<< HEAD
=======
-- number rows: 109
-- time: 33s
-- first 20: 
-- "Aberdeen SD"
-- "Abilene TX"
-- "Alpena MI"
-- "Ashland WV"
-- "Augusta GA"
-- "Barrow AK"
-- "Beaumont/Port Arthur TX"
-- "Bemidji MN"
-- "Bethel AK"
-- "Binghamton NY"
-- "Brainerd MN"
-- "Bristol/Johnson City/Kingsport TN"
-- "Butte MT"
-- "Carlsbad CA"
-- "Casper WY"
-- "Cedar City UT"
-- "Chico CA"
-- "College Station/Bryan TX"
-- "Columbia MO"
-- "Columbus GA"

>>>>>>> origin/master
select distinct f1.origin_city
from Flights f1
where f1.origin_city not in 
	(select f2.origin_city
	from Flights f2
	where f2.actual_time >= 180)
<<<<<<< HEAD
order by f1.origin_city;
=======
order by f1.origin_city;

>>>>>>> origin/master
