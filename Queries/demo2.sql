--get me info who is working as IT_Prog or Sa_rep
select * from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');

--how mnay employee working as IT_prog or Sa_rep

select count(*) from employees
where job_id in('IT_PROG','SA_REP');

-- how many unique first names we have ?
select count(distinct FIRST_NAME) from EMPLOYEES;

-- get me all employees information based on who is making more salary to low SALARY
select * from EMPLOYEES
order by SALARY desc ;
--desc 9 to 0 and z-a
--asc 0 to 9 and a to z

--get me all emp info order by alphabetical based on firstname
select *
from employees
order by first_name;
--NOTE: default order type is asc if you dont specify after column name

-- get me alll employees whose first name starts with C
select *
from employees
where first_name like 'C%';

--get me 5 letter first names where the middle char is z;
select * from EMPLOYEES
where FIRST_NAME like '__z__';

--get me first name where second char is u;
select * from EMPLOYEES
where FIRST_NAME like '_u%';

select * from employees;
--find me minimum salary
select min(salary) from employees;

--find me max salary
select max(salary) from employees;

--find me avg salary
select avg(salary) from employees;

--round
select round(avg(salary),2) from employees;--after coma number we gave it says that how many number we wants after coma
select sum(salary) from employees;
--3,52


