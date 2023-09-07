--Display the maximum and minimum price of the book

SELECT min(price) AS Minimum_Price,
max(price) AS Maximum_price
FROM titles

 --Display the total book price for each type

SELECT type,sum(price)AS Total_Amount 
FROM titles
WHERE type IS NOT  NUll
GROUP BY type 

--Find out the Publisher for the following books 

--   ‘Cooking with Computers: Surreptitious Balance Sheets’, 
--   ‘Silicon Valley Gastronomic Treats’, 
--   ‘Is Anger the Enemy?’, 
--   ‘Fifty Years in Buckingham Palace Kitchens’

SELECT titles.title, publishers.pub_name
FROM publishers INNER JOIN titles
ON publishers.pub_id=titles.pub_id
AND (title='Fifty Years in Buckingham Palace Kitchens' 
OR  title='Cooking with Computers: Surreptitious Balance Sheets'
OR title='Silicon Valley Gastronomic Treats'
OR title='Is Anger the Enemy?')

