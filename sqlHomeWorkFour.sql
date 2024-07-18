use oe;

-- Вывести имя, фамилию покупателей и даты их заказов(order_date).

select cs.cust_first_name, cs.cust_last_name, o.order_date
from customers cs
inner join orders o
on cs.customer_id = o.customer_id;

-- Вывести даты заказов продуктов и описание этих продуктов(product_description).

select o.order_date, pi.PRODUCT_DESCRIPTION
from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join product_information pi
on oi.product_id = pi.product_id;

-- Вывести имя, фамилию покупателей, даты заказов(orderdate), описание продуктов, 
-- которые они заказали и категории соответствующих продуктов (categoryname).

select 
cs.cust_first_name,
cs.cust_last_name, 
o.order_date, 
pi.product_description, 
ct.category_name
from customers cs
inner join orders o on cs.customer_id = o.customer_id
inner join order_items oi on o.order_id = oi.order_id
inner join product_information pi on oi.product_id = pi.product_id
inner join categories_tab ct on pi.category_id = ct.category_id;

-- Вывести названия(productname), описания категорий(categorydescription) и количества(quantity) 
-- тех продуктов, у которых минимальная стоимость (min_price) больше 300.

select pi.product_name, ct.category_description, oi.quantity, pi.min_price
from product_information pi
inner join categories_tab ct on ct.category_id = pi.category_id
inner join order_items oi on oi.product_id = pi.product_id
where pi.min_price > 300;

-- Вывести имя, фамилию всех женатых мужчин покупателей, которые купили продукты со стоимостью (list_price) 
-- больше 550.

select cst.cust_first_name, cst.cust_last_name, pi.list_price
from customers cst
inner join orders o on cst.customer_id = o.customer_id
inner join order_items oi on o.order_id = oi.order_id
inner join product_information pi on oi.product_id = pi.product_id
where cst.marital_status = 'Married' and cst.gender = 'Male' and pi.list_price > 550;

-- Вывести те продукты(productname), которых нет в заказанных (таблица orderitems).

select pi.product_name
from product_information pi
left join order_items oi on pi.product_id = oi.product_id
where oi.product_id is null;

-- Вывести покупателей(custfirstname, custlastname), которые ничего не заказали (таблица orders).

select cst.cust_first_name, cst.cust_last_name
from customers cst
left join orders o on cst.customer_id = o.customer_id
where o.customer_id is null;