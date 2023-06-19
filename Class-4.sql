select sessiontimezone, current_timestamp from dual;
select  last_name, sysdate, hire_date, (sysdate-hire_date) as "Date", round(hire_date, (sysdate-hire_date)/365,0) as month from hr.employees;
select (sysdate-to_date('10-jan-1997', 'dd-mon-yyyy'))/365 from dual;


select (sysdate-to_date('10-jan-1997', 'dd-mon-yyyy'))/365 from dual;

select (sysdate-to_date('10-jan-1997','dd-mm-yy'))365 "Age" from dual;
    
select next_day(sysdate) "Months" from dual;

select next_day('18-jun-2023','sunday')  from dual;

select add_months(sysdate,10) from dual;
select round(months_between(sysdate,'10-jan-1997')/12,0) from dual;
select trunc(months_between(sysdate,'10-jan-1997')/12,2) from dual;
select last_day(sysdate) from dual;

select sysdate from  dual;
select round(sysdate) from  dual;
select round(sysdate, 'Month') from  dual;

select sysdate from  dual;
select trunc(sysdate) from  dual;
select round(sysdate, 'year') from  dual;

select employee_id, to_char(hire_date,'mm/yy') month_hired
from hr.employees where last_name = 'Higgins';

SELECT employee_id, TO_CHAR(hire_date, 'MM/YY') Month_Hired
FROM hr.employees
WHERE last_name = 'Higgins';

SELECT last_name, TO_CHAR(hire_date, 'DD-Mon-YYYY')
FROM hr.employees
WHERE hire_date < TO_DATE('01-Jan-23','DD-Mon-RR');

select last_name,  commission_pct, nvl( commission_pct,1) from hr.employees



select last_name,  commission_pct, nvl2( commission_pct,commission_pct,0) from hr.employees
Select * FROM employees;
Select 'My name is ' ||  first_name ||  ' ' ||  last_name  "Full_name" FROM employees;
Select 'My name is ' ||  first_name ||  ' ' ||  last_name  FROM employees;
select CONCAT ( first_name ,CONCAT ( ' ' , last_name))  "fULL NAME" FROM employees;

SELECT  first_name, SUBSTR (first_name,1, 2) FROM EMPLOYEES;
SELECT  first_name, SUBSTR (first_name,-3, 2) FROM EMPLOYEES;

SELECT SUBSTR ('HELLO WORD',1,2) FROM DUAL;
SELECT INSTR ('HELLOWORD','R') FROM DUAL;
 
 SELECT  first_name, INSTR (first_name,'e' )  FROM EMPLOYEES;
 
 SELECT first_name, SUBSTR (first_name, 1, LENGTH (first_name)-2) FROM employees;
 
  SELECT first_name, SUBSTR (first_name, LENGTH (first_name)-2, LENGTH (first_name)) FROM employees;
 //MIDDLE TWO NUMBER SHOWS
 
 SELECT FIRST_NAME, LPAD(FIRST_NAME,10,' @') FROM EMPLOYEES;
  
 SELECT * FROM JOBS WHERE JOB_ID='&JOB_ID';
 SELECT * FROM EMPLOYEES;
 
 SELECT JOB_ID, CONCAT(CONCAT(LAST_NAME, '''S JOB CATEGORY IS '), JOB_ID) "JOB" FROM EMPLOYEES WHERE SUBSTR(JOB_ID,4)='REP';
 // HERE '''  
SELECT LAST_NAME,DEPARTMENT_ID, UPPER(CONCAT(SUBSTR(LAST_NAME,1,4), '@GMAIL.COM')) FROM EMPLOYEES WHERE DEPARTMENT_ID=60;  
 // CONCAT = JOINS VALUE
 
 SELECT ROUND (45.928,2) FROM DUAL;
 
  SELECT TRUNC (45.928,2) FROM DUAL;
  
   SELECT CEIL (45.928) FROM DUAL;
      SELECT FLOOR (45.928) FROM DUAL;
      SELECT MOD (45,10) FROM DUAL;
SELECT SESSIONTIMEZONE,SYSDATE FROM DUAL;    
SELECT SESSIONTIMEZONE,SYSDATE+5 FROM DUAL;   

SELECT 'The job id for '||UPPER(last_name)||' is '
||LOWER(job_id) AS "EMPLOYEE DETAILS"
FROM employees;

SELECT last_name,salary,
(CASE WHEN salary<5000 THEN 'Low'
WHEN salary<10000 THEN 'Medium'
WHEN salary<20000 THEN 'Good'
ELSE 'Excellent'
END) qualified_salary
FROM employees;


--joint tables 
 --//java
 
 select * from employees natural join jobs;  --common data between 2 table
 
 describe jobs;
 
 select first_name,salary from employees natural join jobs  where salry<9000;
 
 describe employees;
 
 SELECT department_id, department_name,
location_id, city
FROM departments
NATURAL JOIN locations
WHERE department_id IN (20, 50);

SELECT employee_id, last_name,
location_id, department_id
FROM employees JOIN departments
USING (department_id) ;

 SELECT employee_id, last_name,
location_id, department_id
FROM employees natural JOIN departments
 ;
 
SELECT l.city, d.department_name
FROM locations l JOIN departments d
USING (location_id)
WHERE location_id = 1400;

select e.employee_id, e.last_name, e.depertment_id,
        d.depertment_id, d.location_id
    from employees e JOIN depertments d
    on (d.depertment_id=e.employee_id );


SELECT e.employee_id, e.last_name, e.department_id,
d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);


SELECT employee_id, e.last_name, department_id,
 d.location_id
FROM employees e natural JOIN departments d;

-- to do natural jon no needs alies

select employee_id, city, department_name
from employees e
join departments d
on d.department_id= e.department_id
JOIN locations 1
on d.location_id = l.location_id;

SELECT employee_id, city, department_name
FROM employees e
JOIN departments d
ON d.department_id = e.department_id
JOIN locations l
ON d.location_id = l.location_id;

select 
to_char (1680.00,'$99G999D99') from dual;
