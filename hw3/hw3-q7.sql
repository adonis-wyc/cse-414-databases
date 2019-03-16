-- number rows: 4
-- time: 3s
-- first 20:
-- AS
-- UA
-- OO
-- VX
select distinct F.carrier_id
from FLIGHTS as F
where F.origin_city = 'Seattle WA'
and F.dest_city = 'San Francisco CA';

