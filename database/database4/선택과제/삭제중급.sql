-- 1
delete from employees where department = 'HR';

-- 2
delete from offices where country = 'USA';

-- 3
delete from orders where orderDate between '2025-05-01' and '2025-05-31';

-- 4
delete from orderdetails where orderId = 3;

-- 5
delete from payments where customerId = 3;

-- 6
delete from productlines where productLine in ('cup', 'basement')

-- 7
delete from customers where customerNumber in (select customerNumber from customers order by customerNumber desc limit 5);

-- 8
delete from products where quantityInStock = 0;

-- 9
delete from employees where jobGrade = 'Manager';

-- 10
delete from offices order by officeSize asc limit 1;