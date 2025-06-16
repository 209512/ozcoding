-- 1
select area, count(*) as customerCount from customers group by area;

-- 2
select category, avg(price) as averagePrice from products group by category;

-- 3
select officeDepartment, count(*) as employeeCount from employees group by officeDepartment;

-- 4
select office, avg(salary) as averageSalary from employees group by office;

-- 5
select product, sum(quantityOrdered) as totalOrdered from orderdetails group by product order by totalOrdered desc limit 5;