--how to find employees information of who is making highest salary in the company ?
select * from EMPLOYEES
order by SALARY ;

--get me the highest salary
select max(SALARY) from EMPLOYEES;

--higest employee information
select * from EMPLOYEES
where SALARY=24000;

--SUBQUERY SOLUTION IN ONE SHOT
    SELECT * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

--finding second highest salary
--1 get the highest salary first
select max(SALARY) from EMPLOYEES;
--2 highest after 24k
select max(SALARY) from EMPLOYEES
where SALARY < 24000;

--one shot combine two queries
select max(SALARY) from EMPLOYEES
where SALARY < (select max(salary) from EMPLOYEES);

--employee info of who is making second highest salary?
select * from EMPLOYEES
 where SALARY=(select max(SALARY) from EMPLOYEES
               where SALARY < (select max(salary) from EMPLOYEES));

--LIMITING ORDER
select * from EMPLOYEES
order by SALARY desc ;

select * from EMPLOYEES
where ROWNUM <11;

--list the employees who is making top 10 salary

--get the first 10 people then order them high to low based on salary
select * from EMPLOYEES
where ROWNUM < 11
order by SALARY desc ;

--order all employees based on salary high to low then display only first 10 result
select * from (select * from EMPLOYEES order by SALARY desc )
where ROWNUM < 7;
