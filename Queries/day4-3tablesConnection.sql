--get me first name and last names and department name for all employees
select * from EMPLOYEES;

select FIRST_NAME,LAST_NAME,DEPARTMENT_ID
from EMPLOYEES;

select FIRST_NAME,LAST_NAME,DEPARTMENT_Name
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
where e.DEPARTMENT_ID is null ;

--get me first_name,last name and department name, city for all employess
--3tables connection
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY
from EMPLOYEES e join DEPARTMENTS d
on  e.DEPARTMENT_ID=d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

--get me firstname,lastname and deparment name, city,country_name for all employees;
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID=l.LOCATION_ID
join COUNTRIES c
on c.COUNTRY_ID=l.COUNTRY_ID;
