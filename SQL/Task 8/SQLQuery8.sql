 --How many stores are in each unique state in the stores table? Select the state and
 --  display the number of store  in each. Hint: count is used to count rows in a column,
 --  sum works on numeric data only.

SELECT title,price
FROM titles
WHERE price>10.00
ORDER BY price ASC

--Select the title and price in the table title that the price is
--greater than 10.00. Display the results in Ascending order based on the price

SELECT STATE,count(stor_name) AS No_of_stores
FROM stores
GROUP BY(state)