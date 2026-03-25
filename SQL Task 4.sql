create database priya;
use priya;
create table curriculum(Employeeno int,Employeename varchar(100),Job varchar(100),MGR int,Hireddate date,Salary int,Commission int,Departmentno int);
insert into curriculum values(7369,'SMITH','CLERK',7902,'80-12-17',800,NULL,20),
(7499,'ALLEN','SALESMAN',7698,'81-02-20',1600,300,30),
(7521,'WARD','SALESMAN',7698,'81-02-22',1250,500,30),
(7566,'JONES','MANAGER',7839,'81-04-02',2975,NULL,20),
(7654,'MARTIN','SALESMAN',7698,'81-09-28',1250,NULL,30),
(7698,'BLAKE','CLARK',7839,'81-05-01',2850,NULL,10),
(7782,'CLARK','MANAGER',7839,'81-06-09',2450,NULL,10),
(7788,'SCOTT','ANALYST',7566,'87-04-19',3000,NULL,30),
(7839,'KING','TURNER',NULL,'81-11-17',5000,0,20),
(7788,'TURNER','SALESMAN',7698,'81-09-08',1500,NULL,30),
(7876,'ADAMS','CLERK',7788,'87-05-03',1100,NULL,30),
(7900,'JAMES','CLERK',7788,'81-12-03',1500,0,30),
(7844,'TURNER','SALESMAN',7698,'81-09-08',1500,NULL,30),
(7876,'ADAMS','CLERK',7768,'81-12-03',950,NULL,30),
(7902,'MILLER','CLERK',7782,'82-01-23',1300,NULL,10);
select*from curriculum; 

select employeename,salary*12 as annual_salary from curriculum where employeename='SMITH';
select employeename from curriculum where job ='CLERK';
select employeename,salary from curriculum where job ='SALESMAN';
select*from curriculum where salary > 2000;
select*from curriculum where employeename ='JONES';
select*from curriculum where hireddate > 81-01-01;
select employeename,salary,salary*12 as annual_salary from curriculum where salary*12 > 12000;
select employeeno from curriculum where departmentno=30;
select employeename,hireddate from curriculum where hireddate < 1981;
select*from curriculum where job ='MANAGER';
select employeename,salary from curriculum where commission =1400;
select*from curriculum where commission > salary;
select employeeno from curriculum where hireddate > 87;
select*from curriculum where job='ANALYST';
select*from curriculum where salary > 2000;
