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
select *from SALARY_test

create table employees(
id serial primary key,
employee_name varchar(50) not null
);

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