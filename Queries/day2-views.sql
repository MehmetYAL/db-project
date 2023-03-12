--how can we rename the column that we displayed
select FIRST_NAME as given_name, LAST_NAME as "surname"
from EMPLOYEES;--tirnak icinde olursa kucuk yazar tirnak disinda olursa buyuk harf yazar

--text functions,string mani.
--in java to concat -- first name + " " + last name
-- in sql to concat use double pipe ||

select FIRST_NAME || ' ' || LAST_NAME as "full name"
from EMPLOYEES;

--task
--add @gmail.com and name new column to full e-mail
select lower (EMAIL || '@gmail.com ') as "full_email"
from EMPLOYEES;

--Length (value)
select FIRST_NAME, length(FIRST_NAME) as "lenght_name"
from EMPLOYEES
order by "lenght_name" desc;

--substr(colName,beginIndex, NumberOfChar)
select substr(FIRST_NAME,0,1)|| '.' ||substr(LAST_NAME,0,1) as "intials"
from EMPLOYEES;

--combine them
select substr(FIRST_NAME,0,1)|| '.' ||substr(LAST_NAME,0,1) as "intials",
 FIRST_NAME || ' ' || LAST_NAME as "full name",lower (EMAIL || '@gmail.com ') as "full_email"
from EMPLOYEES;

--view
 CREATE VIEW Emaillist_MY as select substr(FIRST_NAME,0,1)|| '.' ||substr(LAST_NAME,0,1) as "intials",
       FIRST_NAME || ' ' || LAST_NAME as "full name",lower (EMAIL || '@gmail.com ') as "full_email"
from EMPLOYEES;

--to remove view
drop view Emaillist_MY;



