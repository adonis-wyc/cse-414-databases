<<<<<<< HEAD
select distinct Fi.carrier_id 
from(select F.carrier_id
     from FLIGHTS as F
     where F.origin_city = “Seattle WA”
     and F.dest_city = “San Francisco CA”) as Fi;
=======
-- number rows: 4
-- time: 3s
-- first 20:
-- AS
-- UA
-- OO
-- VX

select distinct F2.carrier_id as carrier
from(select F1.carrier_id
     from FLIGHTS as F1
     where F1.origin_city = 'Seattle WA'
     and F1.dest_city = 'San Francisco CA') as F2;

>>>>>>> origin/master
