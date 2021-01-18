/*CREATE database sales;
USE sales;

CREATE table sales.product(
p_code VARCHAR(10),
p_name VARCHAR(15),
price  DECIMAL(4,2),
launch_dt DATE,
PRIMARY KEY (p_code)
); 


INSERT INTO product(p_code, p_name, price, launch_dt)
VALUES (1, 'Nail', 10.0, '2013-03-31');

SELECT * FROM product;

INSERT INTO product (p_code, p_name, price, launch_dt)
VALUES (2, 'Washer', 15.00, '2013-03-29'),
 (3, 'Nut', 15.00, '2013-03-29'),
 (4, 'Screw', 25.00, '2013-03-30'),
 (5, 'Super_Nut', 30.00, '2013-03-30'),
 (6, 'New Nut', NULL, NULL);
 
 select p_code as codigo,price as precio, launch_dt as fecha_lanzmiento from product;
 
SET AUTOCOMMIT = 0; 
 
SELECT * FROM product; 
 
UPDATE product
SET price = price - (price * 0.05);
 
SELECT * FROM product;

ROLLBACK;
SELECT * FROM product;

UPDATE product
SET price = price - (price * 0.05)
WHERE p_name = 'Screw' OR p_name = 'Nail';

SELECT * FROM product;

ROLLBACK;

DELETE FROM product
WHERE p_name = 'Nut';

SELECT * FROM product;

DELETE FROM product;
SELECT * FROM product;

ROLLBACK;

UPDATE product
SET price = NULL 
WHERE p_name = 'Nut';

SELECT * FROM product;

ROLLBACK;

SELECT price, p_name, price, p_code, launch_dt FROM product
LIMIT 3;

SELECT p_name, price FROM product 
WHERE price = 15;

SELECT p_name, price FROM product 
WHERE p_name != 'Nut';

SELECT p_name, price FROM product 
WHERE p_name = 'Nut' or p_code = 6;


SELECT * FROM product
WHERE (launch_dt >= '2013-03-30'
OR price > 15
AND p_name != 'Nail');

SELECT * FROM product
WHERE NOT (launch_dt >= '2013-03-30'
OR price > 15
AND p_name != 'Nail');

SELECT * FROM product
WHERE (launch_dt >= '2013-03-30'
OR price > 15)
AND NOT (p_name != 'Nail');

SELECT * FROM product
WHERE price BETWEEN 15 AND 25;

SELECT * FROM product
WHERE price NOT BETWEEN 15 AND 25;

SELECT * FROM product 
WHERE price IN (10,25,50);

SELECT * FROM product
WHERE p_name IN ('Nut','Screw','Tornillo');

SELECT * FROM product 
WHERE p_name 
LIKE 'N___' OR p_name LIKE 'N__';

SELECT * FROM product 
WHERE p_name 
LIKE 'N%';

SELECT * FROM product 
WHERE p_name 
LIKE '%w';

SELECT * FROM product
WHERE regexp_like (p_name,'^N');

SELECT * FROM product 
WHERE p_name LIKE '%\_%';

SELECT c.c_no, c_name, p_code, orders.qty, orders.order_dt
FROM c_order as orders
JOIN customer as c
ON orders.c_no = c.c_no;

SELECT c.c_no, c_name, p_code, orders.qty, orders.order_dt
FROM c_order as orders
LEFT JOIN customer as c
ON orders.c_no = c.c_no;

SELECT c.c_no, c_name, p_code, orders.qty, orders.order_dt
FROM c_order as orders
RIGHT JOIN customer as c
ON orders.c_no = c.c_no;

SELECT product.p_code, product.price, product.p_name, c_order.qty, c_order.order_dt
FROM product 
LEFT JOIN c_order 
ON product.p_code = c_order.p_code; 

SELECT p.p_code, p.price,p.p_name, orders.qty, orders.order_dt
FROM product as p
RIGHT JOIN c_order as orders
ON p.p_code = orders.p_code; 

SELECT c_name,p_name, c_order.qty, c_order.order_dt, product.p_code
FROM c_order
JOIN customer
ON c_order.c_no = customer.c_no
JOIN product
ON c_order.p_code = product.p_code;

SELECT * FROM shipment;

SELECT * FROM c_order; 

SELECT c_order.c_no, c_order.qty, shipment.ship_qty, shipment.ship_dt
FROM c_order
LEFT JOIN shipment
ON c_order.c_no = shipment.c_no;

SELECT c_order.c_no, c_order.qty, shipment.ship_qty, shipment.ship_dt
FROM c_order
RIGHT JOIN shipment
ON c_order.c_no = shipment.c_no;

SELECT c_order.c_no, c_order.p_code, c_order.order_dt, ship_qty, qty, qty-ship_qty as Diferencia
FROM shipment
JOIN c_order
ON shipment.c_no = c_order.c_no
AND shipment.p_code = c_order.p_code
AND shipment.order_dt = c_order.order_dt;*/

SELECT * FROM shipment;

SELECT * FROM c_order;

SELECT c_order.*, ship_dt
FROM c_order
LEFT JOIN shipment
ON c_order.p_code = shipment.p_code;

SELECT ship_dt, c_order.*
FROM c_order
Right JOIN shipment
ON c_order.p_code = shipment.p_code
WHERE (ship_dt < '2013-04-10' AND qty > 100);