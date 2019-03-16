--comma-separated form
.separator ","
.mode csv
SELECT * FROM MyRestaurants;

--list form, delimited by " | "
.mode list
.separator "|"
SELECT * FROM MyRestaurants;

--column form where each column has width 15
.mode column
.width 15 15 15 15 15 
SELECT * FROM MyRestaurants;


--printing/not printing the column headers with the results

--ON
.header on
.separator ","
.mode csv
SELECT * FROM MyRestaurants;

.mode list
.separator "|"
SELECT * FROM MyRestaurants;

.mode column
.width 15 15 15 15 15
SELECT * FROM MyRestaurants;

--OFF

.header OFF
.separator ","
.mode csv
SELECT * FROM MyRestaurants;

.mode list
.separator "|"
SELECT * FROM MyRestaurants;

.mode column
.width 15 15 15 15 15
SELECT * FROM MyRestaurants;
.mode column
.width 15 15 15 15 15
SELECT * FROM MyRestaurants;

