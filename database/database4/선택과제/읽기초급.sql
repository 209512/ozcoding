-- 1
select * from customers;

-- 2
select * from products;

-- 3
select name, jobGrade from employees;

-- 4
select address from offices;

-- 5
select * from orders order by OrderDate desc limit 10;

-- 6 
select * from orderdetails where orderId = 4;

-- 7
select * from payments where customerId = 5;

-- 8
select productDeescription from productlines;

-- 9
select * from customers where area = 'seoul';

-- 10
select * from products where price between 10 and 20;