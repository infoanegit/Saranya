 --Display/find the given authors complete address information. [Panteley Sylvia]

SELECT au_lname+' '+au_fname AS Name,address+','+city+','+state+'-'+zip as Address
FROM authors
WHERE au_lname='Panteley' AND au_fname='Sylvia'

--Display only the hire date and employee name for each employee

SELECT hire_date,fname+' '+lname+' '+minit AS Name
FROM employee

--Display all the books which come under ‘Psychology’ type

SELECT title AS Books,type
FROM titles
WHERE type='psychology'



 

 
