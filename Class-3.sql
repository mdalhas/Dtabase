Select  FROM employees;
Select 'My name is '   first_name   ' '   last_name  Full_name FROM employees;
Select 'My name is '   first_name   ' '   last_name  FROM employees;
select CONCAT ( first_name ,CONCAT ( ' ' , last_name))  fULL NAME FROM employees;

SELECT  first_name, SUBSTR (first_name,1, 2) FROM EMPLOYEES;
SELECT  first_name, SUBSTR (first_name,-3, 2) FROM EMPLOYEES;

SELECT SUBSTR ('HELLO WORD',1,2) FROM DUAL;
SELECT INSTR ('HELLOWORD','R') FROM DUAL;
 
 SELECT  first_name, INSTR (first_name,'e' )  FROM EMPLOYEES;
 
 SELECT first_name, SUBSTR (first_name, 1, LENGTH (first_name)-2) FROM employees;
 
  SELECT first_name, SUBSTR (first_name, LENGTH (first_name)-2, LENGTH (first_name)) FROM employees;
 MIDDLE TWO NUMBER SHOWS
 
 SELECT FIRST_NAME, LPAD(FIRST_NAME,10,' @') FROM EMPLOYEES;
  
 SELECT  FROM JOBS WHERE JOB_ID='&JOB_ID';
 SELECT  FROM EMPLOYEES;
 
 SELECT JOB_ID, CONCAT(CONCAT(LAST_NAME, '''S JOB CATEGORY IS '), JOB_ID) JOB FROM EMPLOYEES WHERE SUBSTR(JOB_ID,4)='REP';
 // HERE 

SELECT LAST_NAME,DEPARTMENT_ID, UPPER(CONCAT(SUBSTR(LAST_NAME,1,4), '@GMAIL.COM')) FROM EMPLOYEES WHERE DEPARTMENT_ID=60;  
  //CONCAT = JOINS VALUE
 
 SELECT ROUND (45.928,2) FROM DUAL;
 
  SELECT TRUNC (45.928,2) FROM DUAL;
  
   SELECT CEIL (45.928) FROM DUAL;
      SELECT FLOOR (45.928) FROM DUAL;
      SELECT MOD (45,10) FROM DUAL;
SELECT SESSIONTIMEZONE,SYSDATE FROM DUAL;    
SELECT SESSIONTIMEZONE,SYSDATE+5 FROM DUAL;    
   