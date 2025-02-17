## 1. vea la tabla order_detail.

SELECT
*
FROM
order_details;
## 2. ¿Cuál es el rango de fechas de la tabla?
SELECT
min(order_date), max(order_date)
FROM
order_details;

## 3.Cuantos pedidos se hicieron dentro de este rango de fechas. 
select 
count(distinct order_id)
 from 
 order_details;

## 4. ¿Cuántos artículos se ordenaron dentro de este rango de fechas?
select
count(*)
from
order_details;

## 5. ¿Que pedidos tuvieron la mayor cantidad de articulos?

select 
order_id, count(item_id) as num_items 
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

## 6. ¿Cuantas ordenens tienen mas de 12 pedidos.
select count(*) from 
(select 
order_id, count(item_id) as num_items 
FROM order_details
GROUP BY order_id
having num_items > 12) as num_orders;
