--get me info who is working as IT_Prog or Sa_rep
select * from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');

--how mnay employee working as IT_prog or Sa_rep

select count(*) from employees
where job_id in('IT_PROG','SA_REP');
