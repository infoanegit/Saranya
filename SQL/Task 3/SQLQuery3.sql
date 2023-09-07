 --Display/find the total number of Publishers in publishers table

 SELECT COUNT(pub_id)  AS Total_number_of_publishers
 FROM publishers

--Display the employee name and job description of all employees with the same job as Howard

SELECT employee.fname+' '+employee.lname+' '+employee.minit AS Name,jobs.job_desc
FROM employee
INNER JOIN jobs ON employee.job_id=jobs.job_id 
And  job_desc=(select job_desc from jobs
where job_id=(select job_id from employee where fname='Howard'))

 --Display the employee name and job description of all employees whose are not Managing Editor

SELECT employee.fname+' '+employee.lname+' '+employee.minit AS Name,jobs.job_desc
from employee
inner join jobs on employee.job_id=jobs.job_id
And not job_desc='Managing Editor'



