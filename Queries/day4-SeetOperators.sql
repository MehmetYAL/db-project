-- UNION -> COMBINE, REMOVES DUPLICATES,SORT
select * from TESTERS
union
select * from  DEVELOPERS;

-- UNION ALL-> COMBINES, DOES NOT REMOVE DUPLICATES, DOES NOT SORT
SELECT * FROM TESTERS
UNION ALL
SELECT * FROM DEVELOPERS;

--MiNUS
-- compare the first and second tables than print the only first tables uniques like substraction
select NAMES from DEVELOPERS
minus
select NAMES from TESTERS;

--INTERSECT
--COMPARE 2 TABLES AND PRINT ONLY THE COMMONS FROM BOTH TABLES

SELECT NAMES FROM DEVELOPERS
INTERSECT
SELECT NAMES FROM TESTERS;
--2:15
--how to find duplicate names in employess table
select FIRST_NAME,count(*)
from EMPLOYEES
group by FIRST_NAME
having count(*) >1;