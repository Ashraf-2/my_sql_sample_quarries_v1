select * from orders.address;

select distinct CITY from address;

select count(distinct CITY) from address;

select CITY,STATE from address;

select * FROM orders.address where ADDRESS_ID > 910;

select * from orders.address where ADDRESS_ID < 910;

SELECT * FROM ADDRESS WHERE ADDRESS_ID BETWEEN 915 AND 920;

SELECT * FROM online_customer;

SELECT * FROM online_customer WHERE CUSTOMER_GENDER = 'F';

SELECT * FROM online_customer WHERE CUSTOMER_GENDER != 'F';

SELECT CUSTOMER_FNAME FROM online_customer WHERE CUSTOMER_GENDER = 'F';

SELECT count(CUSTOMER_FNAME) FROM online_customer WHERE CUSTOMER_GENDER = 'F';

SELECT * FROM order_items;
SELECT * FROM PRODUCT;
SELECT * FROM PRODUCT_CLASS;
SELECT * FROM SHIPPER;
SELECT * FROM order_header;

SELECT * FROM order_header WHERE PAYMENT_MODE = "Cash" AND SHIPPER_ID =50001;

SELECT * FROM order_header WHERE PAYMENT_MODE NOT IN ("Cash", "Credit Card");

-- sorting (BY DEFAULT -> ASCENDING)
SELECT * FROM order_header ORDER BY SHIPPER_ID;

-- sorting (DESCANDING)
SELECT * FROM order_header ORDER BY SHIPPER_ID DESC;

-- sort by multiple columns;
SELECT * FROM order_header ORDER BY SHIPPER_ID, CUSTOMER_ID;

SELECT * FROM order_header ORDER BY SHIPPER_ID, CUSTOMER_ID DESC;