use restaurant_db;


## 1. vea la tabla menu_items y escriba una consulta para encontrar el número de elemento en el menú 
SELECT 
    *
FROM
    menu_items;

## 2. encontrar el número de elemento en el menú
select
 count(*)
 from
 menu_items;

## 3. ¿Cuáles son los elementos más baratos y más caros del menú?
select
*
from
menu_items
order by price;

## 4. ¿Cuántos platos italianos hay en el menú?
select
count(*)
from menu_items
where category="Italian";

## 5. ¿Cuáles son los platos italianos más baratos y más baratos del menú?
select
*
from 
menu_items
where
category="Italian"
order by 'price';

select
*
from 
menu_items
where
category="Italian"
order by 'price' desc;

## 6. ¿Cuántos platos hay en cada categoría?

select 
category, count(menu_item_id) as num_dishes
from 
menu_items
group by category;

## 7. ¿Cuál es el precio promedio de los platos dentro de cada categoría?

SELECT category, avg(price) as average_price
from menu_items
group by category;
