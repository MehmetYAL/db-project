/*create table syntax:
create table TableName(
                          colName1 DataType Constraints,
                          colName2 DataType Constraints(optional)
                              colName3 DataType Constraints,
    ...
);
*/

Create Table ScrumTeam_MehmetY(
                                  Emp_ID Integer Primary Key,
                                  FirstName varchar(30) not null,
                                  LastName varchar(30),
                                  JobTitle varchar(20)



);
select * from ScrumTeam_MehmetY;

INSERT INTO ScrumTeam_MehmetY (Emp_ID, FirstName, LastName, JobTitle)
VALUES (5,'MehmetY','Yal','Tester');
INSERT INTO ScrumTeam_MehmetY VALUES (2,'John','Snow','Developer');
INSERT INTO ScrumTeam_MehmetY VALUES (3,'Jack','Lamb','PO');
INSERT INTO ScrumTeam_MehmetY VALUES (4,'Aboubakar','Striker','Scrum MAster');

select * from  ScrumTeam_MehmetY;
UPDATE ScrumTeam_MehmetY
SET  JOBTITLE = 'Tester'
WHERE EMP_ID = 2;


--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/
DELETE FROM ScrumTeam_MehmetY
WHERE EMP_ID =3;




