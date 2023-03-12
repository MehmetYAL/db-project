--get me avarage salary for IT_PROG
select AVG(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

SELECT JOB_ID,AVG(SALARY),COUNT(*),SUM(SALARY)--EACH JOB TITLE WITH avg sal,total sum salary
FROM EMPLOYEES
GROUP BY JOB_ID;

--get me Job_ids where their avg salary is more than 5k
SELECT JOB_ID,AVG(SALARY),COUNT(*),SUM(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID
having avg(SALARY)>5000;
