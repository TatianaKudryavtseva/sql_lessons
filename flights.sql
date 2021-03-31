drop database if exists flights;
create database flights;
use flights;
drop table if exists flights;
create table flights (
id bigint unsigned not null,
city_from varchar(100) not null,
city_to varchar(100) not null
);

drop table if exists cities;
create table cities (
id bigint unsigned not null,
label varchar(100) not null,
name varchar(100) not null
);

insert into flights (id, city_from, city_to)
VALUES
(1, 'Moscow', 'Omsk'),
(2, 'Novgorod', 'Kazan'),
(3, 'Irkutsk', 'Moscow'),
(4, 'Omsk', 'Irkutsk'),
(5, 'Moscow', 'Kazan');

insert into cities VALUES
(1, 'Moscow', 'Москва'),
(2, 'Irkutsk', 'Иркутск'),
(3, 'Novgorod', 'Новгород'),
(4, 'Omsk', 'Омск'),
(5, 'Kazan', 'Казань');

SELECT f.id, c.name as city_from, 
p.name as city_to FROM flights f
join cities c
on f.city_from = c.label 
join cities p
on f.city_to = p.label
order by f.id