-- 1
delete from orders where orderDate between '2024-01-01' and '2024-12-31';

-- 2
delete from orderdetails where productId= (
select productId from orderdetails
group by productId
order by sum(quantityOrdered) asc 
limit 1
);

-- 3
delete from payment where price <= 50.00;

-- 4
delete from productlines where not exists (
select 1 from products
where products.productLine = productlines.productlines
);

-- 5
delete from customers where lastOrderDate < '2024-06-16';