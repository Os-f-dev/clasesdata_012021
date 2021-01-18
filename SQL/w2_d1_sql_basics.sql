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
 
 SET AUTOCOMMIT = 0; /*checkpoint*/
SELECT * FROM product; 
 
UPDATE product
SET price = price - (price * 0.05)
WHERE p_code = 3;
 
SELECT * FROM product;


