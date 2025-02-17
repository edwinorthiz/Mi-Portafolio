## 1. Combine las tablas menu_items y order_details en una sola tabla.
select * from menu_items;
select * from order_details;
select *
from order_details od left join menu_items mi
    on od.item_id = mi.menu_item_id;

## 2. ¿Cuales fueron los elementos mas y menos pedidos? ¿En que categoria se encuentran?
select item_name, category, count(order_details_id) as num_purchases
from order_details od left join menu_items mi
    on od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchases;

## 3.¿cuales fueron los cinco pedidos principales que gastaron mas dinero? 

select order_id, sum(price) as total_spend
from order_details od left join menu_items mi
    on od.item_id = mi.menu_item_id
group by order_id
order by total_spend desc
limit 5;

## 4. ver los detalles del pedido de mayor gasto. ¿Qué ideas puedes obtener de la visualización?
select category, count(item_id) as num_items
from order_details od left join menu_items mi
    on od.item_id = mi.menu_item_id
where order_id = 440
group by category;

## 5. vea los detalles del mayor de los 5 pedidos de mayor gasto.  ¿Qué conocimientos puedes recopilar?
select order_id, category, count(item_id) as num_items
from order_details od left join menu_items mi
    on od.item_id = mi.menu_item_id
where order_id in (440, 2075, 1957, 330, 2675)
group by order_id, category;