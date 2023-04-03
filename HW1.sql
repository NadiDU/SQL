create table SALARY_test(
ID SERIAL primary key,
MONTHLY_SALARY INT not NULL
);  

create table ROLES_test(
ID SERIAL primary key,
role_title varchar(50)
);

select * from roles_com;

create table roles_salary2 (
id serial primary key,
id_role int not null,
id_salary int not null,
foreign key (id_role)
references roles(id),
foreign key (id_salary)
references salary(id)
);

select *from ROLES_SALARY1;

insert into SALARY_test (MONTHLY_SALARY)
values (500),
(600),
(800),
(900),
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000);

insert into SALARY_test (MONTHLY_SALARY)
values (2500);

drop table SALARY_test;

select *from SALARY_test

create table SALARY (
ID SERIAL primary key,
MONTHLY_SALARY INT not NULL
);  



create table employees(
id serial primary key,
employee_name varchar(50) not null
);
insert into SALARY (MONTHLY_SALARY)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2500),
(2400);

insert into employees (employee_name)
values ('Nadya'),
('Alex'),
('Tanya'),
('Luba'),
('Venya'),
('Zina'),
('Egor'),
('Gleb'),
('Neo'),
('Lena'),
('Rosa'),
('Roma'),
('Vadim'),
('Katarina'),
('Jhersy'),
('Jan'),
('Kolya'),
('Nick'),
('Pier'),
('Olive'),
('Alice'),
('Anton'),
('Polina'),
('Dasha'),
('Sasha'),
('Olya'),
('Dima'),
('Julya'),
('Jena'),
('Timothy'),
('Angelina'),
('Harry'),
('Sally'),
('Alexandr'),
('Tata'),
('Love'),
('Viola'),
('Filipp'),
('Grisha'),
('Vitya'),
('Greg'),
('Vito'),
('Andrew'),
('James'),
('Bruse'),
('William'),
('Connor'),
('Kyle'),
('Rachel'),
('Charles'),
('Diana'),
('Illia'),
('Anton'),
('Leonid'),
('Lera'),
('Leto'),
('Masha'),
('Pasha'),
('Nataly'),
('Sam'),
('Jhon'),
('Borya'),
('Willy'),
('Rebecca'),
('Qaf'),
('Tina'),
('Rita'),
('Nick'),
('Kyle'),
('Anatoly'),
('Marcus'),
('Max'),
('Summer'),
('May'),
('Omar'),
('Vadim'),
('Nata');

select * from employees;

create table employee_salary (
id serial primary key,
employee_id Int not null unique,
salary_id Int not null);

select count (id) from employees;

insert into employee_salary (employee_id, salary_id )
values (3, 7),
(1, 4),
(72, 9),
(40, 13),
(66, 8),
(55, 8),
(56, 9),
(34, 14),
(22,9),
(12,1),
(54, 2),
(21, 6),
(43, 12),
(11, 3),
(27, 5),
(38, 10),
(45, 11),
(63, 13),
(6,15),
(10,16),
(59, 14),
(13, 5),
(44, 4),
(60, 13),
(5, 16),
(36, 2),
(7, 15),
(58, 14),
(74,4),
(39,1),
(88, 15),
(87, 11),
(85, 15),
(79, 3),
(94, 5),
(96, 10),
(84, 11),
(80, 13),
(78,15),
(99,16);

create table roles (
id serial primary key,
role_name Int not null unique);

alter table roles alter column role_name type varchar(30);

insert into roles (role_name) 
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

create table roles_employee (
id serial primary key,
employee_id Int not null unique,
role_id Int not null,
foreign key (employee_id) references employees(id),
foreign key (role_id) references roles(id)
);
