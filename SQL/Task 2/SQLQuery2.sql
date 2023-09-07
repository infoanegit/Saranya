--Display the names and hire dates of  employees hired between 1991 - 1992

SELECT fname,minit,lname,hire_date
FROM employee
WHERE YEAR(hire_date) BETWEEN 1991 AND 1992

--Display the names of employees without middle (minit) name

SELECT fname+' '+lname as Name
FROM employee

--Display the names and hire dates of all employees with the column 
--  headers \Name" and \Start Date", in the order they were hired

SELECT fname +''+lname+'.'+minit AS Name,hire_date AS Startdate
FROM employee
ORDER BY hire_date ASC 

--Retrieve the names of  employees whose designation is ‘Sales Representative’

SELECT fname+' '+lname+' '+minit as Name
FROM employee
WHERE job_id in (SELECT job_id FROM jobs WHERE job_desc='Sales Representative')






