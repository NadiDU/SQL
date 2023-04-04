--Output all employees whose salaries are in the database, along with salaries
select employee_name from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

--Output all employees whose PO is less than 2000
select employee_name from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where Monthly_salary < 2000;

--Display all salary positions, but no employee has been assigned to them. ((There is a PO, but it is unclear who gets it.)
--select employee_name, monthly_salary from employee_salary
select employee_name, monthly_salary from employee_salary
join salary on employee_salary.salary_id = salary.id
left join employees on employee_salary.employee_id = employees.id
where employee_name is null;

--Withdraw all salary positions less than 2000, but no employee has been assigned to them. ((There is a PO, but it is unclear who gets it.)
select employee_name, monthly_salary from employee_salary
join salary on employee_salary.salary_id = salary.id
full outer join employees on employee_salary.employee_id = employees.id
where monthly_salary < 2000 and employee_name is null;

--Find all employees who have not been paid
select employee_name, monthly_salary from employee_salary
join salary on employee_salary.salary_id = salary.id
full outer join employees on employee_salary.employee_id = employees.id
where monthly_salary is null;

--Output all employees with their job titles
select employee_name from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id;

--Output the names and position of Java developers only
select employee_name, role_name from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
where role_name like '%Java%';

--Output the names and position of Python developers only
select employee_name, role_name from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
where role_name like '%Python%';

--Print the names and position of all QA engineers
select employee_name, role_name from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
where role_name like '%QA engineer%';

--Output the names and position of manual QA engineers
select employee_name, role_name from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
where role_name like '%Manual QA engineer%';

--Output the names and position of QA automators
select employee_name, role_name from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
where role_name like '%Automation QA engineer%';

--Output names and salaries of Junior specialists
select employee_name, monthly_salary, role_name from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

--Output the names and salaries of Middle specialists
select employee_name, monthly_salary, role_name from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

--Display the names and salaries of Senior specialists
select employee_name, monthly_salary, role_name from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%';

--Output salaries of Java developers
select monthly_salary, role_name from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id 
where role_name like '%Java%';

--Output Python developers' salaries
select monthly_salary, role_name from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id 
where role_name like '%Python%';

--Output the names and salaries of Middle JS developers
select employee_name, monthly_salary from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle JavaScript developer%';

--Output names and salaries of Senior Java developers
select employee_name, monthly_salary from employees
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.employee_id = roles.id
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior Java developer%';

--Output salaries of Java developers
select monthly_salary, role_name from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where role_name like '%Junior%QA engineer%';

--Output the average salary of all Junior specialists
select avg (monthly_salary) from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where role_name like '%Junior%';

--Withdraw the amount of salaries of JS developers
select sum (monthly_salary) from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where role_name like '%JavaScript developer%';

--Output the minimum PO of QA engineers
select min (monthly_salary) from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA engineer%';

--Output the maximum PO of QA engineers
select max (monthly_salary) from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA engineer%';

--Output the number of QA engineers
select count (role_id) from roles_employee 
join roles on roles_employee.employee_id = roles.id
where role_name like '%QA engineer%';

--Output the number of Middle specialist
select count (role_id) from roles_employee 
join roles on roles_employee.employee_id = roles.id
where role_name like '%Middle%';

--Output the number of developers
select count (role_id) from roles_employee 
join roles on roles_employee.employee_id = roles.id
where role_name like '%developer%';

--Withdraw the developer salary fund (amount)
select sum (monthly_salary) from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where role_name like '%developer%';

--Output the names, positions and PO of all specialists in ascending order
select employee_name, Role_name, monthly_salary from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
order by monthly_salary

--Output the names, positions and PO of all specialists in ascending order from specialists who have a PO from 1700 to 2300
select employee_name, role_name, monthly_salary from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where monthly_salary between 1700 and 2300
order by monthly_salary;

--Print the names, positions and PO of all specialists in ascending order from specialists who have a PO less than 2300
select employee_name, role_name, monthly_salary from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where monthly_salary < 2300
order by monthly_salary;

--Print the names, positions and PO of all specialists in ascending order from specialists whose PO is equal to 1100, 1500, 2000
select employee_name, role_name, monthly_salary from salary 
join employee_salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where monthly_salary in ('1100', '1500', '2000')
order by monthly_salary;

