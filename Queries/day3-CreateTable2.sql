select * from SCRUMTEAM_MEHMETY;

--adding new column
ALTER TABLE SCRUMTEAM_MEHMETY ADD salary Integer;


UPDATE SCRUMTEAM_MEHMETY set salary = 99000 where EMP_ID=2;

--rename column

Alter TABLE SCRUMTEAM_MEHMETY RENAME COLUMN salary  to a_salary;

--delete or drop column
ALTER TABLE  SCRUMTEAM_MEHMETY DROP COLUMN a_salary;

--how to change table name
ALTER TABLE SCRUMTEAM_MEHMETY RENAME to AgileTeam;

select * from AgileTeam;

--truncate, delete all the data-info from  table but still keep table structure

TRUNCATE TABLE AgileTeam;

--if we want to data and table together
DROP TABLE AgileTeam;