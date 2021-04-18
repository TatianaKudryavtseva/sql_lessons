use shop;

select u.id, u.name, count(o.id) as count_orders from users u
join orders o
on u.id = o.user_id
group by u.id;

select u.id, u.name from users u
join orders o
on u.id = o.user_id
group by u.id;

select p.name as product, c.name as catalog from products p
join catalogs c
on p.catalog_id = c.id;

