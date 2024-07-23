-- Используя бд OE решить задачи.
use oe;

-- Таблица - customers



-- Вывести максимальный и минимальный credit_limit.
select max(cust.credit_limit) as max_credit_limit, min(cust.credit_limit) as min_credit_limit
from customers cust;

-- Вывести покупателей у которых creditlimit выше среднего creditlimit.
select *
from customers cust
where cust.credit_limit > (
	select avg(cust.credit_limit)
	from customers cust
);

-- Найти кол/во покупателей имя которых начинается на букву 'D' и credit_limit больше 500.
select count(*) as customers_count
from customers cust
where cust.cust_first_name like 'D%' and cust.credit_limit > 500;

-- Таблица - order_items



-- Найти среднее значение unit_price
select avg(oi.unit_price)
from order_items oi;


-- Таблицы - orderitems, productinformation



-- Вывести имена продуктов(PRODUCT_NAME), кол/во(QUANTITY) которых меньше среднего.

select pi.product_name, oi.quantity
from product_information pi
inner join order_items oi
on pi.product_id = oi.product_id
where oi.quantity < (
    select avg(quantity)
    from order_items
);


-- Таблицы - orders, customers



-- Вывести имя и фамилию покупателя с максимальной общей суммой покупки(ORDER_TOTAL).

select cust.cust_first_name, cust.cust_last_name, max(sum_orders) as max_total_order_amount
from (
	select o.customer_id, sum(o.order_total) as sum_orders
    from orders o
    group by o.customer_id
) as cust_total_orders
inner join customers cust on cust.customer_id = cust_total_orders.customer_id
group by cust.cust_first_name, cust.cust_last_name
order by max_total_order_amount desc
limit 1;

-- Найти сумму общей суммы покупок(ORDER_TOTAL) всех мужчин покупателей.
select sum(o.order_total) as sum_mans_orders
from orders o
inner join customers cust on o.customer_id = cust.customer_id
where cust.gender = 'M';
