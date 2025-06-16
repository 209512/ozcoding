-- 1
update orders set status = 'cancelled' where orderDate between '2024-01-01' and '2024-12-31';

-- 2
update orderdetails set priceEach = priceEach * 1.2, amount = 2 where orderId = 3;

-- 3
update payments set payType = 'card', paymentDate = '2025-05-12' where paymentDate Between '2025-05-01' and '2025-05-31';

-- 4
update producylines set productDescription = 'update description' where productLine in (select * from products);

-- 5
update customers set address = 'update' where customerId in (select* from customers);