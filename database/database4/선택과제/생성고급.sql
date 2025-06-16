-- 1
insert into customers (name, address) values ('tom', 'seoul, korea');
insert into orders (customerId, orderDate) values (last_insert_id(), '2020-02-02');
insert into orderdetails (orderId, productId, quantityOrdered, price) values (last_insert_id(), 4, 1, 39.99);

-- 2
insert into employees (name, age, phone) values ('k', 30, '123-123-123');
update employees set reportsTo = (select employeeId from employees where employTask = 'manage' limit 1) where name = 'k';

-- 3
insert into products (name, price) values ('book', 13.99);
insert into orders (customerId, orderDate) values (1, '2025-05-15');
insert into orderdetails (orderId, productId, price, amount) values (last_insert_id(), last_insert_id(), 13.99, 2);

-- 4
insert into orders (customerId, orderDate) values (2, '2024-02-02');
insert into payments (customerId, paymentDate, price) values (2, '2024-02-02', 14.55);

-- 5
insert into orderdetails (orderId, productId, quantityOrdered, price)
values (2, 4, 1, 30.00);
update prodects set quantityInStock = quantityInStock - 1 where productId = 4;