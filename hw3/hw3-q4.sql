<<<<<<< HEAD
=======
-- number rows: 256
-- time: 20s
-- first 20:
-- "Wichita Falls TX"
-- "Manchester NH"
-- "Ponce PR"
-- "Knoxville TN"
-- "Kinston NC"
-- "Dickinson ND"
-- "Eugene OR"
-- "Worcester MA"
-- "Sioux City IA"
-- "Charlottesville VA"
-- "Saginaw/Bay City/Midland MI"
-- "Billings MT"
-- "Hays KS"
-- "Pocatello ID"
-- "Fayetteville NC"
-- "Muskegon MI"
-- "Gainesville FL"
-- "College Station/Bryan TX"
-- "Pellston MI"
-- "Bismarck/Mandan ND"

>>>>>>> origin/master
select distinct F2.dest_city as city
from FLIGHTS as F1, FLIGHTS as F2
where F1.dest_city = F2.origin_city
and F1.origin_city = '"Seattle WA"'
and F2.dest_city not in(select F.dest_city
                        from FLIGHTS as F
                        where F.origin_city = '"Seattle WA"')
<<<<<<< HEAD
and F2.dest_city <> '"Seattle WA"';
=======
and F2.dest_city <> '"Seattle WA"';

>>>>>>> origin/master
