--создание т1
create table categories11 (
cat_id int primary key,
cat_name varchar(40) not null,
price int not null
);

--создание таблицы 2
create table dishes11 (
dish_id serial,
dish varchar (40) not null,
cat int not null,
foreign key (cat)
references categories11 (cat_id)
);

--вывести значение т1
select * from categories11;

--вывести значения из т2
select * from dishes11;

--ывести значение в т1
insert into categories11 (cat_id, cat_name, price)
values (30, 'Горячие', 30),
(40, 'Закуски', 25),
(70, 'Салаты', 15),
(100, 'Напитки', 5),
(202, 'Супы', 30);

-- вывести в т2 
insert into dishes11 (dish, cat)
values ('Драники', 30),
('Оливье', 70),
('Цезарь', 70),
('Котлеты', 30),
('Борщ', 202);

-- соединение 2х таблиц
select Dishes11.dish, Dishes11.cat, categories11.price
from dishes11 inner join categories11
on categories11.cat_id = dishes11.cat;