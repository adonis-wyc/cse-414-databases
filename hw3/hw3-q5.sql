<<<<<<< HEAD
=======
-- number rows: 3
-- time: 344s
-- first 20:
-- "Hattiesburg/Laurel MS"
-- "St. Augustine FL"
-- "Devils Lake ND"

>>>>>>> origin/master
select distinct F3.dest_city as city
from FLIGHTS as F3
where F3.dest_city not in(select F2.dest_city
                          from FLIGHTS as F, FLIGHTS as F2
                          where F.dest_city = F2.origin_city
                          and F.origin_city = 'Seattle WA'
                          and F2.dest_city <> 'Seattle WA')
and F3.dest_city not in(select F.dest_city
                        from FLIGHTS as F
                        where F.origin_city = 'Seattle WA')
<<<<<<< HEAD
and F3.dest_city <> 'Seattle WA';
=======
and F3.dest_city <> 'Seattle WA';
>>>>>>> origin/master
