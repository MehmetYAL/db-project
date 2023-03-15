--get me all employees firstname, lastname and their managers first and lastname
-- if you have to select from same table and join to same table
select employee_id,first_name,last_name,manager_id from employees;

select e1.EMPLOYEE_ID,e1.FIRST_NAME,e1.LAST_NAME,e1.MANAGER_ID,e2.EMPLOYEE_ID,e2.FIRST_NAME,e2.LAST_NAME
from EMPLOYEES e1 join EMPLOYEES e2
on e1.MANAGER_ID=e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID;
--1:25
