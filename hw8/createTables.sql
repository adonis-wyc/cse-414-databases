CREATE EXTERNAL DATA SOURCE cse344blob
WITH (  TYPE = BLOB_STORAGE,
        LOCATION = 'https://cse344storage.blob.core.windows.net/cse344blob'
);

create table Carriers(cid varchar(7) primary key, name varchar(83));

create table Months(mid int primary key, month varchar(9));

create table Weekdays(did int primary key, day_of_week varchar(9));

create table Flights(

fid int, 

month_id int references Months, -- 1-12

day_of_month int, -- 1-31 

day_of_week_id int references Weekdays, -- 1-7, 1 = Monday, 2 = Tuesday, etc

carrier_id varchar(7) references Carriers, 

flight_num int,

origin_city varchar(34), 

origin_state varchar(47), 

dest_city varchar(34), 

dest_state varchar(46), 

departure_delay int, -- in mins

taxi_out int, -- in mins

arrival_delay int, -- in mins

canceled int, -- 1 means canceled

actual_time int, -- in mins

distance int, -- in miles

capacity int, 

price int, 

primary key(fid));

 

 

bulk insert Carriers from 'carriers.csv'

with (ROWTERMINATOR = '0x0a',

DATA_SOURCE = 'cse344blob', FORMAT='CSV', CODEPAGE = 65001, --UTF-8 encoding

FIRSTROW=1,TABLOCK);

 

bulk insert Months from 'months.csv'

with (ROWTERMINATOR = '0x0a',

DATA_SOURCE = 'cse344blob', FORMAT='CSV', CODEPAGE = 65001, --UTF-8 encoding

FIRSTROW=1,TABLOCK);

 

bulk insert Weekdays from 'weekdays.csv'

with (ROWTERMINATOR = '0x0a',

DATA_SOURCE = 'cse344blob', FORMAT='CSV', CODEPAGE = 65001, --UTF-8 encoding

FIRSTROW=1,TABLOCK);

 

--this last import will take about 5 minutes

bulk insert Flights from 'flights-small.csv'

with (ROWTERMINATOR = '0x0a',

DATA_SOURCE = 'cse344blob', FORMAT='CSV', CODEPAGE = 65001, --UTF-8 encoding

FIRSTROW=1,TABLOCK);
CREATE TABLE USERS
(
	username varchar(20) NOT NULL PRIMARY KEY,
	password varchar(20),
	balance int
)

CREATE TABLE RESERVATIONS
(   rid int NOT NULL PRIMARY KEY,
	paid int,
	cost int,
	first_flight_id int,
	second_flight_id int,
	username varchar(20)
)

CREATE TABLE CAPACITIES
(
	fid int NOT NULL PRIMARY KEY,
	capacity int
)

CREATE TABLE RESERVATION_COUNT
( count int NOT NULL PRIMARY KEY,
)

