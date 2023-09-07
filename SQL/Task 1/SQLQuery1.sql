--Write an SQL Query to display all information in the authors table

SELECT * FROM authors

--Display all authors first name and last name who lived in the state ‘UT’

SELECT au_fname as Firstname,au_lname as Lastname,state 
FROM authors
WHERE state='UT'

--Display the last names of all authors with an `A' in their last name

SELECT au_lname as Lastname
FROM authors
WHERE au_lname LIKE '[Aa]%' OR au_lname LIKE '%[Aa]%' OR au_lname LIKE '%[Aa]'

--Display all information of an author with phone number is ‘707 448-4982’

SELECT * FROM authors
WHERE phone='707 448-4982'