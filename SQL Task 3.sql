create database _table_;
use _table_;
create table employees (id int,name varchar(100), age int, department varchar(100), salary int, joining_date date);
insert into employees values(1,'Arun',23,'HR',30000,'2020-08-23'),
(2,'Anitha',22,'Finance',25000,'2018-09-16'),
(3,'Kaviya',25,'IT',58000,'2021-11-08'),
(4,'Charan',27,'Manager',40000,'2022-08-09'),
(5,'Vinoth',30,'Assistant',20000,'2019-04-28'),
(6,'Maaran',34,'HR',38000,'2018-09-04'),
(7,'Reetheesh',25,'Manager',62000,'2021-06-06'),
(8,'Priya',23,'Employee',27000,'2022-09-05'),
(9,'Nirmala',35,'IT',30000,'2019-03-25'),
(10,'Aravind',29,'Accountant',33000,'2024-11-17');

select*from employees;
select name, salary from employees;
select*from employees where department='IT';
select*from employees where salary>40000;
select*from employees where age<30;

select*from employees where salary between 30000 and 60000;
select*from employees where department in ('HR','Finance');
select*from employees where name like 'A%';
select*from employees where name like '%n';
select*from employees where age!=25;

select*from employees order by salary asc;
select*from employees order by salary desc;
select*from employees order by age;
select*from employees order by salary;
select*from employees order by name asc;

select max(salary) from employees;
select min(salary) from employees;
select avg(salary) from employees;
select sum(salary) from employees;
select count(*) from employees;

select department,sum(salary) from employees group by department;
select department,avg(salary) from employees group by department;
select department,count(*) from employees group by department;
select department,max(salary) from employees group by department;
select department,min(salary) from employees group by department;

select department,sum(salary) from employees group by department having sum(salary)>100000;
select department,count(*) from employees group by department having count(*)>3;
select department,avg(salary) from employees group by department having avg(salary)>40000;

select upper(name) from employees;
select lower(name) from employees;
select name,length(name) from employees;
select substring(name,1,3) from employees;
select concat(name,' ',department) from employees; 