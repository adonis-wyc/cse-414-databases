.mode csv
.header ON
PRAGMA foreign_keys=ON;

DROP TABLE IF EXISTS Flights;
DROP TABLE IF EXISTS Months;
DROP TABLE IF EXISTS Weekdays;
DROP TABLE IF EXISTS Carriers;


CREATE TABLE Carriers (
	cid varchar(7) PRIMARY KEY,
	name varchar(83)
);

.import carriers.csv Carriers

CREATE TABLE Months (
	mid integer PRIMARY KEY,
	month varchar(9)
);
.import months.csv Months


CREATE TABLE Weekdays (
	did integer PRIMARY KEY,
	day_of_week varchar(9)
);
.import weekdays.csv Weekdays

CREATE TABLE Flights (
	fid integer PRIMARY KEY,
	month_id integer,
	day_of_month integer,
	day_of_week_id integer,
	carrier_id varchar(7),
	flight_num integer,
	origin_city varchar(34),
	origin_state varchar(47),
	dest_city varchar(34),
	dest_state varchar(46),
	departure_delay integer,
	taxi_out integer,
	arrival_delay integer,
	canceled integer,
	actual_time integer,
	distance integer,
	capacity integer,
	price integer,
	FOREIGN KEY (carrier_id)
		REFERENCES Carriers(cid),
	FOREIGN KEY (month_id)
		REFERENCES Months(mid),
	FOREIGN KEY (day_of_week_id)
		REFERENCES Weekdays(did)
);
.import flights-small.csv Flights
