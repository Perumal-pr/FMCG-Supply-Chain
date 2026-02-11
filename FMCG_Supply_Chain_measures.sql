create database SupplyChain;

use SupplyChain;

select * from customers limit 10;

select * from dates limit 10;

select * from products limit 10;

select * from targets_orders limit 10;

select * from order_lines limit 10;

select * from orders_aggregate limit 10;

-- How many lines shipped out of total lines ordered
select order_id, count(order_id) as orders
from order_lines group by order_id;

-- Total Quantity shipped to customer per order 
select customer_id, order_id, count(order_id) as orders
from order_lines group by customer_id,order_id order by customer_id;

-- Total orders placed by customers in customer wise
select customer_id, count(distinct order_id) as orders
from order_lines group by customer_id;

-- Total orders placed
select distinct count(order_id) as Total_Orders
from order_lines;

-- Full Delivery percentage
Alter table targets_orders rename column `infull_target%` to `infull_target`;

Alter table targets_orders rename column `ontime_target%` to `ontime_target`;

Alter table targets_orders rename column `otif_target%` to `otif_target`;

select avg(infull_target) as INFT_Percentage
from targets_orders;

-- On Time delivery percentage
select avg(ontime_target) as ONTT_Percentage
from targets_orders;

-- On Time full deliver percentage
select avg(otif_target) as OTIF_Percentage
from targets_orders;

-- Line Item Fill Rate (LIFR) Total items fullfilled divided by total items ordered mul by 100
select (sum(In_Full)/count(order_id))*100 as LIFR
from order_lines;

-- Volume order Fill Rate (VOFR) Total order delivered divided by total orders mul by 100
select (sum(On_Time)/count(order_id))*100 as LIFR
from order_lines;