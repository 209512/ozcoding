-- 1
update customers set address = 'seoul, korea' where customerId = 1;

-- 2
update products set price = 3000 where product = 'cup';

-- 3
update employees set jobGrade = 'sales' where employeeId = 2;

-- 4
update offices set phone = '010-123-123' where officeId = 1;

-- 5
update orders set orderState = 'complete' where orderId = 4;

-- 6
update orderdetails set quantity = 30 where orderId = 3;

-- 7
update payments set price = 40.00 where paymentId = 2;

-- 8
update productlines set productDescription = 'whatever you want.' where productLine = 4;

-- 9
update customers set email = '123123@gmail.com' where customerId = 1;

-- 10
update products set price  = price * 1.5 where productId = 1 and productId = 2;