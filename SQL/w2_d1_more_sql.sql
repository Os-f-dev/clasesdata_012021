/*SELECT p_code, 
CONCAT ('In Uppercase: ', LOWER(p_name)) AS 'Product_name',
(price*100) AS 'Price * 100',
DATE_FORMAT (launch_dt, '%d/%m/%Y') AS 'Launch_dt'
FROM product
LIMIT 2;
SELECT DISTINCT (p_name, price) FROM product; 

SELECT DISTINCT price, launch_dt FROM product ORDER BY price;

SELECT DISTINCT price, launch_dt FROM product ORDER BY launch_dt;

SELECT DISTINCT price, launch_dt FROM product ORDER BY p_name;

SELECT MAX(price) as 'Max_price',
MIN(price) as 'Min_price',
SUM(price) as 'Sum_price',
AVG(price) as 'Avg_price',
COUNT(price) as 'Count(price)',
COUNT(*) as 'COUNT (*)'
FROM product;

SELECT p_code,p_name,
CASE price
WHEN 10
THEN 'CHEAP'
WHEN 15
THEN 'MEDIUM'
WHEN 25
THEN 'EXPENSIVE'
ELSE 'OTHER'
END AS price_cat
FROM product;

SELECT p_code, p_name,
CASE
	WHEN (price <= 10
		AND p_name NOT LIKE 'Nut%') 
	THEN 'Cheap'
    WHEN price BETWEEN 11 AND 15
    THEN 'Medium'
    WHEN (price > 25 AND launch_dt > '2013-03-29')
    THEN 'Expensive'
    WHEN price IS NULL
    THEN 'Not valid'
    ELSE 'Other'
END AS product_cat, launch_dt
FROM product
ORDER BY p_name DESC;

CREATE TABLE nut_product AS 
SELECT * FROM product WHERE p_name LIKE '%Nut%';

SELECT * FROM nut_product;

CREATE TEMPORARY TABLE not_nut_product AS 
SELECT * FROM product WHERE p_name NOT LIKE '%Nut%';

SELECT * FROM not_nut_product; 

SELECT launch_dt,
MIN(price) as 'Min_price',
SUM(price) as 'Sum_price',
AVG(price) as 'Avg_price',
COUNT(price) as 'Count(price)',
COUNT(*) as 'COUNT (*)'
FROM product
GROUP BY launch_dt
ORDER BY price DESC;

SELECT launch_dt,
MIN(price) as 'Min_price',
SUM(price) as 'Sum_price',
AVG(price) as 'Avg_price',
COUNT(price) as 'Count(price)',
COUNT(*) as 'COUNT (*)'
FROM product
GROUP BY launch_dt
HAVING COUNT(price) > 1
ORDER BY price DESC; 

SELECT launch_dt,
MIN(price) as 'Min_price',
SUM(price) as 'Sum_price',
AVG(price) as 'Avg_price',
COUNT(price) as 'Count(price)',
COUNT(*) as 'COUNT (*)'
FROM product
WHERE p_name NOT LIKE 'Super%'
GROUP BY launch_dt
HAVING launch_dt > '2013-03-29'
ORDER BY launch_dt;

SELECT product.* FROM product
WHERE price = (SELECT MAX(price)
FROM product AS p
INNER JOIN c_order as o
ON p.p_code = o.p_code);

SELECT p.* FROM (SELECT MAX(price), o.qty, p.p_code, p_name
FROM product AS p
INNER JOIN c_order as o
ON p.p_code = o.p_code) AS p;

SELECT p.p_code, price, o.qty
FROM product AS p
INNER JOIN c_order as o
ON p.p_code = o.p_code

CREATE TEMPORARY TABLE new_temporary AS (SELECT MAX(price), o.qty, p.p_code, p_name
FROM product 
INNER JOIN c_order 
ON product.p_code = c_order.p_code);

SELECT * FROM new_temporary;


Subquery pendiente:

CREATE TEMPORARY TABLE new_temporary_2
AS (SELECT qty, p_code, p_name
FROM product 
WHERE price = (SELECT MAX(price)
FROM product AS p
INNER JOIN c_order as o
ON p.p_code = o.p_code));*/


