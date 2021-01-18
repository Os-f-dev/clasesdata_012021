CREATE TABLE product
 (
 p_code VARCHAR(6),
 p_name VARCHAR(15),
 price DECIMAL(4,2),
 launch_dt DATE,
 PRIMARY KEY (p_code)
 );

INSERT INTO product 
VALUES (1,'Nail', 10.0,"2013-03-29"),
(2, 'Washer', 15.00,"2013-03-29"),
(3, 'Nut', 15.00,"2013-03-29"),
(4, 'Screw', 25.00,"2013-03-30"),
(5, 'Super_Nut', 30.00,"2013-02-28"),
(6, 'New Nut', NULL, NULL);

create table c_order (c_no varchar(6), p_code varchar(6),qty int,order_dt DATE);

INSERT INTO c_order
VALUES (10,1,100,"2013-04-01"),
(10,2,100,"2013-04-01"),
(20,1,200,"2013-04-01"),
(30,3,300,"2013-04-02"),
(40,4,400,"2013-04-02"),
(40,5,400,"2013-04-03");

create table customer (c_no varchar(6), c_name varchar(30));

INSERT INTO customer
VALUES (10,"Standard Store"),
(20,"Quality Store"),
(30,"Head Office"),
(40,"Super Agent");

create table shipment (c_no VARCHAR(6), p_code varchar(6), order_dt DATE, ship_qty int, ship_dt DATE);

INSERT INTO shipment
VALUES (10,1,"2013-04-01", 50, "2013-04-02"),
(10,2,"2013-04-01",100,"2013-04-02"),
(20,1,"2013-04-01",100,"2013-04-02"),
(30,3,"2013-04-02",300,"2013-04-03"),
(10,1,"2013-04-01",50,"2013-04-10");