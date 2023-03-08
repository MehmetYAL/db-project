SELECT * FROM EMPLOYEES;

select * from departments;
--reads all cloumn from departments table

Select FIRST_NAME from employees;
--get only firstname from employess table

select city from LOCATIONS;
--display city names
select * from EMPLOYEES
where JOB_ID in('IT_Prog','Sa_rep');

select LAST_NAME from EMPLOYEES;

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;
select distinct FIRST_NAME from EMPLOYEES;
--remove the duplicates
select FIRST_NAME,LAST_NAME,SALARY,PHONE_NUMBER from EMPLOYEES
WHERE FIRST_NAME ='David';

--get me all information who is making more than 7000 salary
select * from EMPLOYEES
where salary > 7000;

select EMAIL from EMPLOYEES
WHERE SALARY < 4000;

--GET me all info who is working as IT_Prog or sa_rep

--get me first_name,last_name,salary who is making more than 5000 and less then 10000
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where SALARY>5000 and SALARY<10000;--where salary between 5000 and 10000
--2.41
--get me all info where emp_id 130 to 170
select * from EMPLOYEES
where EMPLOYEE_ID between 130 and 170;

--get me all info where employee_id 135 176 154 129
select * from EMPLOYEES
where EMPLOYEE_ID=135 or EMPLOYEE_ID=176 or EMPLOYEE_ID=154 or EMPLOYEE_ID=129;

select * from EMPLOYEES
where EMPLOYEE_ID in(135,176,154,129);

--get me city of where country_id IT,us,uk

select city,COUNTRY_ID from LOCATIONS
where COUNTRY_ID in ('IT','US','UK');

select * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID='SA_REP';

select count(*) from EMPLOYEES
where  JOB_ID in ('IT_prog','Sa_rep');
select count(*) from employees
where job_id in('IT_PROG','SA_REP');



