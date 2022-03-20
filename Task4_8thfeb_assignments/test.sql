--Assignment 1
--Creating a two new tables as they dont exist in the previous database of oracle

CREATE TABLE my_orders
(OrderId number(10) NOT NULL,
CustomerId number(10) NOT NULL,
OrderDate DATE);

CREATE TABLE my_customers
(CustomerId number(10) NOT NULL,
CustomerName varchar(50) NOT NULL,
ContactName varchar(50),
Country varchar(50));

INSERT INTO my_orders VALUES(10308, 2, '18-09-1996');
INSERT INTO my_orders VALUES(10309, 37, '19-09-1996');
INSERT INTO my_orders VALUES(10310, 77, '20-09-1996');

INSERT INTO my_customers VALUES(1, 'Alfreds Futterkiste','Maria Anders','Germany');
INSERT INTO my_customers VALUES(2, 'Ana Trujillo Emparedados y helados','Ana Trujillo','Mexico');
INSERT INTO my_customers VALUES(3, 'Antonio Moreno Taquería','	Antonio Moreno','Mexico');


SELECT * FROM my_orders;
SELECT * FROM my_customers;

SELECT my_orders.OrderID, my_customers.customername, my_orders.orderdate
FROM my_orders INNER JOIN my_customers ON my_orders.customerid=my_customers.customerid;

SELECT my_orders.OrderID, my_customers.customername, my_orders.orderdate
FROM my_orders LEFT OUTER JOIN my_customers ON my_orders.customerid=my_customers.customerid;

SELECT my_orders.OrderID, my_customers.customername, my_orders.orderdate
FROM my_orders RIGHT OUTER JOIN my_customers ON my_orders.customerid=my_customers.customerid;

SELECT my_orders.OrderID, my_customers.customername, my_orders.orderdate
FROM my_orders FULL OUTER JOIN my_customers ON my_orders.customerid=my_customers.customerid;

