--Select the average price in the table titles for  pub _id is 1389

SELECT avg(price) AS Average_Price
FROM titles 
WHERE pub_id=1389

--What are the total numbers of rows in the titles table

SELECT count(title_id) AS Number_of_rows
FROM titles

--List the address of all stores  in the state WA or CA in the table stores

SELECT stor_name,stor_address+','+city+','+state+'-'+zip AS Address
FROM stores
WHERE state='WA' OR state='CA'

 --List the date between  the year 1989 to 1992 in the table employee

SELECT hire_date 
FROM employee
WHERE YEAR(hire_date) BETWEEN 1989 AND 1992

--List the first name and last name of the employee in the employee table where the jobs_id  is 6

SELECT fname,lname,job_id
FROM employee
WHERE job_id=6






