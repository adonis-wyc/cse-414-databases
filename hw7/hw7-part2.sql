-- PART 2 --
-- name -> price
SELECT name
FROM Sales
GROUP BY name
HAVING COUNT (DISTINCT price) > 1;

SELECT month 
FROM Sales
GROUP BY month
HAVING COUNT (DISTINCT discount) > 1;

SELECT COUNT(*)
FROM Sales sale1, Sales sale2
WHERE sale1.name = sale2.name AND sale1.price != sale2.price;

/*
0
*/

-- month -> discount
SELECT COUNT(*)
FROM Sales sale1, Sales sale2
WHERE sale1.month = sale2.month AND sale1.discount != sale2.discount;

/*
0     
*/

-- name, discount -> price
SELECT COUNT(*)
FROM Sales sale1, Sales sale2
WHERE sale1.name = sale2.name 
AND sale1.discount = sale2.discount
AND sale1.price != sale2.price;

/*
0     
*/

-- name, month -> price
SELECT COUNT(*)
FROM Sales sale1, Sales sale2
WHERE sale1.name = sale2.name 
AND sale1.month = sale2.month
AND sale1.price != sale2.price;

/*
COUNT(*)  
----------
0     
*/

-- name, month -> discount 
SELECT COUNT(*)
FROM Sales sale1, Sales sale2
WHERE sale1.name = sale2.name 
AND sale1.month = sale2.month
AND sale1.discount != sale2.discount;

/*
0     
*/

-- price, month -> discount
SELECT COUNT(*)
FROM Sales sale1, Sales sale2
WHERE sale1.price = sale2.price 
AND sale1.month = sale2.month
AND sale1.discount != sale2.discount;

/*
0     
*/

-- name -> price, discount
SELECT COUNT(*)
FROM Sales sale1, Sales sale2
WHERE sale1.name = sale2.name 
AND sale1.price != sale2.price
AND sale1.discount != sale2.discount;

/*
0     
*/

-- name -> price, month
SELECT COUNT(*)
FROM Sales sale1, Sales sale2
WHERE sale1.name = sale2.name 
AND sale1.price != sale2.price
AND sale1.month != sale2.month;

/*
0     
*/

-- month -> discount, name
SELECT COUNT(*)
FROM Sales sale1, Sales sale2
WHERE sale1.month = sale2.month 
AND sale1.discount != sale2.discount
AND sale1.name != sale2.name;

/*
0     
*/

-- month -> discount, price
SELECT COUNT(*)
FROM Sales sale1, Sales sale2
WHERE sale1.month = sale2.month 
AND sale1.discount != sale2.discount
AND sale1.price != sale2.price;

/*
0     
*/


-- PART 3 --
-- CREATE TABLES --
CREATE TABLE T1(name varchar(7) PRIMARY KEY,
price INT);

CREATE TABLE T2(month varchar(3) PRIMARY KEY,
discount varchar(3)
);

CREATE TABLE T3(month varchar(3) REFERENCES T2, 
name varchar(7) REFERENCES T1
);


-- PART 4 -- 
-- LOAD TABLES --

INSERT INTO T1 SELECT DISTINCT name, price FROM Sales;

INSERT INTO T2 SELECT DISTINCT month, discount FROM Sales;

INSERT INTO T3 SELECT DISTINCT month, name FROM Sales;

-- COUNT --
SELECT COUNT(*) AS T1_COUNT
FROM T1;

/*
37    
*/

SELECT COUNT(*) AS T2_COUNT
FROM T2;

/*
13 
*/

SELECT COUNT(*) AS T3_COUNT
FROM T3;

/*
427  
*/

