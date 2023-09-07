 --Find the total number of books in ‘Business’ type.

SELECT COUNT(type) AS No_of_books_type_Business
FROM titles
WHERE type='business'

--Display the published date for this book ‘Life Without Fear’

SELECT title,pubdate as Published_Date
FROM titles
WHERE title='Life Without Fear'

--Display all the books title published by ‘Binnet & Hardley’

SELECT titles.title as Books,publishers.pub_name as Publisher_name
FROM titles INNER JOIN publishers
ON titles.pub_id=publishers.pub_id
AND publishers.pub_id=(SELECT pub_id from publishers where pub_name='Binnet & Hardley')

 --Find the authors first name and last name for this book ‘Straight Talk About Computers

select authors.au_fname as Firstname,authors.au_lname as Lastname,titles.title AS Book_name
from titles inner join titleauthor
on titles.title_id=titleauthor.title_id inner join authors
on authors.au_id=titleauthor.au_id
And authors.au_id=(select titleauthor.au_id from titleauthor where title_id=(select title_id from titles where title='Straight Talk About Computers'))