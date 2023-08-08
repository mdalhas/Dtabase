SELECT department_id, sum(salary), avg (salary)
FROM employees
GROUP BY department_id
order by department_id; 

SELECT department_id, salary
FROM employees

order by department_id; 



create sequence hasan_sequ start with 101 increment by 1;

create table hasansTable(
e_id int primary key,
e_name varchar2 (30),
e_dob date,
e_hire_date date,
salary number (8,2)
);

insert into hasansTable 
values(hasan_sequ.NEXTVAL,'Sehjad','1-jan-1997', sysdate, 30000
);


select * from hasansTable;


--3----
select *
from hasanstable
order by e_id desc
fetch first 1 rows only;
--4----
select *
from hasanstable
 where e_name like '%a%';

--5----

select first_name, last_name, salary 
from employees
where salary < (select salary from employees where employee_id=182);

--6----
select d.department_name, avg(e.salary) as average_salary, count(*) 
as commis_employees
from departments d
join employees e on d.department_id = e.department_id
where e.commission_pct is not null
group by d.department_name;


select * from departments;
select * from employees;
select avg(salary), count(*) 
from employees
where commission_pct is not null;

create sequence table_name_seq 
start with 101
INCREMENT by 1;

create table tabdle_name (
    e_id int default  table_name_seq.nextval primary key ,
    e_name varchar2(30)
);

select * from hasanstable
order by e_id desc
fetch first 1 row only;

select max(rownum) from employees;

ALTER TABLE hasanstable
ADD CONSTRAINT emp_mgr_fk
FOREIGN KEY(e_dob)
REFERENCES hasanstable(e_hire_date);

select employee_id, job_id
from employees
where department_id =80
minus
select employee_id, job_id

from retired_employees
where department_id =90;

select job_id
from employees
union 
select job_id
from retired_employees;


select job_id
from employees
union all
select job_id
from retired_employees;

--CREATE TABLE EMP_173962 (
--EID int primary key, 
--ENAME varchar2(30), 
--eSalary number (8,2), 
--eAddress varchar2(30));
--
--select * from EMP_173962
--
--insert into  EMP_173962 (EID,ENAME,eSalary,eAddress)
--VALUES
--(1,'hASAN', 10000,'dHAKA');
--
--insert into  EMP_173962 (EID,ENAME,eSalary,eAddress)
--VALUES
--(2,'sahASAN', 19000,'bHOLAAA');
--
--insert into  EMP_173962 (EID,ENAME,eSalary,eAddress)
--VALUES
--(4,'MUSLEM', 15000,'BOGURA');


create table emloyees(
    e_id int primary key,
    e_name varchar2(30,
    e_designation varchar2(30,
    hire_date date;
    e_salary number (8,2)
);

create table emp_222(
    eid int primary key,
    e_name varchar2(30),
    cell_no varchar2(30),
    hire_date date,
    salary  number ( 8,2)
);


 



