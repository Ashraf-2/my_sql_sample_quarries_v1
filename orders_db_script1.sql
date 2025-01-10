-- see table of a database
SELECT * FROM orders.address;
SELECT * FROM orders.product;
SELECT * FROM orders.product_class;
SELECT * FROM orders.shipper;
SELECT * FROM orders.order_items;
SELECT * FROM orders.online_customer;
;
-- display based on columns
SELECT SHIPPER_NAME FROM orders.shipper;
SELECT SHIPPER_NAME,SHIPPER_ADDRESS FROM orders.shipper;



-- display unique address (distinct city)
SELECT distinct CITY FROM orders.address;

-- DELETE a specific item of a table
DELETE FROM product WHERE PRODUCT_ID = 205;
SELECT * FROM orders.product;


-- SET SQL_SAFE_UPDATES = 0;
-- update the price of all products in the product table to A 25% lesser value
UPDATE orders.product SET PRODUCT_PRICE = PRODUCT_PRICE - (PRODUCT_PRICE*0.25) ;
SELECT * FROM orders.product;

-- update the price of all products in the product table to A 25% bigger value
UPDATE orders.product SET PRODUCT_PRICE = PRODUCT_PRICE + (PRODUCT_PRICE*0.25) ;
SELECT * FROM orders.product;

-- show top 10 rows from the address table

SELECT * FROM address LIMIT 10;
-- new concepts

-- 1. Display all the data from address table where state = 'NY'
SELECT * FROM orders.address where STATE = 'NY';

-- 2. Fetch the records from the address table for NY, CT, AND AL States.
SELECT * FROM orders.address where STATE = 'NY' OR STATE ='CT' OR STATE = 'AL';
-- or
SELECT * FROM orders.address where STATE in ('NY', 'CT', 'AL');



-- 3. Fetch the records from the address table where state is not NULL.
SELECT * FROM orders.address where STATE IS NOT NULL;


-- 4. Fetch the records from the address table where city starts with the letter 'B'
SELECT * FROM orders.address where CITY LIKE 'B%';

-- 5. Fetch the records from the address table where city name contains exactly 5 letters.
SELECT * FROM orders.address where CITY like '_____';

-- 6. FETCH all the records from the product table where PRICE is BETWEEN 5000 AND 10000
SELECT * FROM orders.product where PRODUCT_PRICE BETWEEN 5000 AND 10000;

-- 7. FETCH all the records from the product table where PRICE is less then 1000 and QUANTITY available is more than 100
SELECT * FROM orders.product where PRODUCT_PRICE < 1000 AND PRODUCT_QUANTITY_AVAIL > 100;

-- 8. Fetch all the records from product table where product price is less than 1000 or QUANTITY available is less than 50
SELECT * FROM product where PRODUCT_PRICE < 1000 OR PRODUCT_QUANTITY_AVAIL < 50;


-- New Learning

-- 9. Finds the total number of records in the product table
SELECT COUNT(*) AS CNT FROM orders.product;

-- 10.1 FETCH SUM OF PRODUCT PRICE AND AVERAGE PRODUCT PRICE FOR EACH PRODUCT_CLASS_CODE
-- 10.2 SELECT ONLY THE PRODUCT CLASSES THAT HAVE AN AVARAGE PRICE >= 4000
SELECT PRODUCT_CLASS_CODE, SUM(PRODUCT_PRICE) AS TOTAL_PRICE, AVG(PRODUCT_PRICE) AS AVG_PRICE FROM orders.product GROUP BY  PRODUCT_CLASS_CODE HAVING AVG_PRICE >= 4000;

-- 11. Fetch total numbers of male and female customers using Online_Customer table
SELECT * FROM online_customer;
SELECT CUSTOMER_GENDER, COUNT(CUSTOMER_GENDER) AS Gender_count FROM orders.online_customer GROUP BY CUSTOMER_GENDER;

-- 12. Display the count of unique cities in the Address table
SELECT * FROM orders.address;
SELECT COUNT(distinct CITY) AS Total_Cities FROM orders.address;
SELECT CITY, COUNT(CITY) AS Total FROM orders.address group by CITY;

use college;

select * from marks_table;
-- use of "GROUP BY"
select grade, count(grade) as std_obtains from marks_table group by grade;
select city, count(City) as std_city from marks_table group by City;
select city, grade, count(*) from marks_table group by city, grade;
select grade, city, count(*) from marks_table group by grade, city;

select city, gender, count(*) from marks_table group by city, gender;
select count(*) as total_students from marks_table;

	
