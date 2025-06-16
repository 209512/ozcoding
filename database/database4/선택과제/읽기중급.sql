-- 1
select * from orders where customerId = 1;

-- 2
select * from orderdetails where product = 'cup';

-- 3 
select * from payments where paymentDate between '2020-02-02' and '2024-04-04';

-- 4
select * from employees where jobGrade = 'sales';

-- 5
select * from offices where country ='korea';

-- 6
select * from productlines where productLine = 'cars';

-- 7
select * from customers order by customerNumber desc limit 5;

-- 8
select * from product where amount = 0;

-- 9
select * from orders where orderDate between '2025-05-01' and '2025-05-31';

-- 10
select orderId, sum(quantityOrdered * price) as totalAmount from orderdetails where orderId = 2 group by orderid;
