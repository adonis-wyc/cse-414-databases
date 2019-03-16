select distinct Fi.carrier_id 
from FLIGHTS as F 
where F.origin_city = ‘Seattle WA’ 
and F.dest_city = ‘San Francisco’;