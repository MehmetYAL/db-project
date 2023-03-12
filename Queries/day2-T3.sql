--FIND THE highests 14th salary
select min(SALARY)
from (select * from EMPLOYEES order by SALARY desc )
where ROWNUM < 15;


-- find employee info who is making 14th highest salary(with duplicates)
select * from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select * from EMPLOYEES order by SALARY desc )
                where ROWNUM < 15);

---- find employee info who is making 14th highest salary(removing duplicates)
select * from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select distinct  SALARY from EMPLOYEES order by SALARY desc )
                where ROWNUM < 15);

