create database info;
use info;
create table employees(id int,name varchar(150),age int,department varchar(150),salary int);
create table students(student_id int,student_name varchar(150),course varchar(150),marks int);
select*from employees;
select*from students;
alter table employees add email varchar(150);
alter table employees modify salary decimal(10,2);
alter table employees rename column name to employees_name;
alter table employees drop column age;
alter table students rename to college_students;
truncate table employees;
drop table college_students;

insert into employees values
(1,'Ajay',32,'HR',30000),
(2,'Ravi',28,'IT',40000),
(3,'Sneha',26,'Finance',35000),
(4,'Kiran',30,'Marketing',28000),
(5,'Meena',29,'HR',32000);
insert into employees(name,age,dep,salary)values
('arun',27,'IT',45000);
set sql_safe_updates=0;
update employees set salary=50000 where id=3;
update employees set salary=salary*1.10 where department='HR';
update employees set department='Finance' where name='ajay';
delete from employees where salary<25000;
select *from employees; 
delete from employees where id=5;

select*from employees;
select name,salary from employees;
select*from employees where department="IT";
select*from employees where salary>40000;
select*from employees where age>25;
select*from employees where name like 'A%';
select* from employees where salary between 30000 and 50000;
select* from employees order by Salary Asc;
select* from employees order by salary Desc;
