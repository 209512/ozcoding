-- 1
update employees set office = 2 where department = 'manage';

-- 2
update offices set location = 'update' where country = 'seoul'; 

-- 3
update orders set delivery = 'complete' where orderDate between '2025-05-01' and '2025-05-31'

-- 4
update orderdetails set price = price - 9.99 where orderId in (select orderId from orders where orderDate between '2023-03-03' and '2024-04-04');
-- 5
update payments set price = price * 0.9 where customerId = 2;

-- 6
update productlines set productDescription = 'special product' where productLine in ('classic cars', 'cars');

-- 7
update customers set phone = '122-131-1111' where area = 'seoul';

-- 8
update prodcts set price = price * 1.05 where category = 'bottle';

-- 9
update employees set salary = salary + 4000, phone = '010-0101-0110' where employeeId = 2;

-- 10
update offices set address = '123 st.', phone = '11-22-33' where officeId = 1;