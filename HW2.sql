SELECT * from students;
SELECT name from students;
SELECT id from students;
SELECT name from students;
SELECT email from students;
SELECT name, email from students;
SELECT id, name, email, created_on  from students;

SELECT * from students
where password = '12333';

SELECT * from students
where created_on = '2021-03-26 00:00:00';

SELECT * from students
where name like '%Anna%';

SELECT * from students
where name like '%8';

SELECT * from students
where name like '%a%';

SELECT * from students
where created_on = '2021-07-12 00:00:00';

SELECT * from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';

SELECT * from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';

SELECT * from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';

SELECT * from students
where id = '110';

SELECT * from students
where id = '153';

SELECT * from students
where id > '140';

SELECT * from students
where id < '130';

SELECT * from students
where id < '127' or id > '188';

SELECT * from students
where id <= '137';

SELECT * from students
where id >= '137';

SELECT * from students
where id > '180' and id < '190';

SELECT * from students
where id between '180' and '190';

SELECT * from students
where password in ('12333', '1m313', '123313');

SELECT * from students
where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

SELECT min(id) from students;

SELECT max(id) from students;

SELECT count(id) from students;

SELECT id, name, created_on  from students
order by created_on;

SELECT id, name, created_on  from students
order by created_on desc;