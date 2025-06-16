-- 1
insert into customers (name, age, address, phone) values
('who', 20, 'seoul, korea', '010-1234-1234'),
('ph', 1000, 'earth', '123-456-789');

-- 2 
insert into products (product, price, amount) values
('bottle', 20.00, 40),
('wallet', 34.99, 1);

-- 3
insert employees (name, age, phone) values
('k', 40, '567-567-567'),
('mm', 18, '12-313-2231');

-- 4
insert into orders (customerId, orderDate) values ('4asdf', '2025-06-11');
insert into orderdetails (orderId, product, quantity, price) values
('23452325', 'cup', 3, 14.00);

-- 5
insert into payments (price, payType, paymentDate) values
(3.50, 'cash', '2021-01-01'),
(67.29, 'card', '3032-12-23');

-- 6
insert into customers (name, age, phone)
values ('rte', 10, '010-345-234');
insert into orders (customer, orderDate) values
(last_insert_id(), '2022-02-02');

-- 7
insert into employees (name, phone) values ('tom', '010-2020-2020');
update employees set jobTitle = 'casher' where employeeNumber = last_insert_id();

-- 8
insert into products (name, price, amount) values ('camera', 29.99, 5);
update products set amount = 30 where productCode = last_insert_id();

-- 9 
insert into offices (address, phone) values ('seoul', '123-234-345');
update employees set officeCode = last_insert_id() where lastName = 'ten';

-- 10
insert into productlines (productLine, description) values ('cars', 'various car');
insert into products (name, price, productLine) values
('classic car', 799.99, 'cars'),
('offroad car', 1300.99, 'cars');