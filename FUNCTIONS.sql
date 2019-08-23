-- Here is a quick preview of some important aggregates that we will cover in the next five exercises:
-- COUNT(): count the number of rows
-- SUM(): the sum of the values in a column
-- MAX()/MIN(): the largest/smallest value
-- AVG(): the average of the values in a column
-- ROUND(): round the values in the column

--********************************************************************************************
-- COUNT()
-- COUNT() is a function that takes the name of a column as an argument and counts the number of non-empty values in that column.
SELECT COUNT(*) FROM DT_name;


--********************************************************************************************
-- SUM()
-- SUM() is a function that takes the name of a column as an argument and returns the sum of all the values in that column.
SELECT SUM(column_name) FROM DT_name;


--********************************************************************************************
-- MAX()/MIN()
-- The MAX() and MIN() functions return the highest and lowest values in a column, respectively.
SELECT MAX(column_name) FROM DT_name;
SELECT MIN(column_name) FROM DT_name;


--********************************************************************************************
-- AVG()
-- SQL uses the AVG() function to quickly calculate the average value of a particular column.
SELECT AVG(column_name) FROM DT_name;


--********************************************************************************************
-- ROUND()
-- By default, SQL tries to be as precise as possible without rounding. We can make the result table easier to read using the ROUND() function.
-- ROUND() function takes two arguments inside the parenthesis:
-- a column name
-- an integer
-- It rounds the values in the column to the number of decimal places specified by the integer.
select ROUND(column_name, 0) FROM DT_name;
SELECT ROUND(AVG(price), 2) FROM fake_apps;



--********************************************************************************************
-- GROUP BY()
-- Oftentimes, we will want to calculate an aggregate for data with certain characteristics.
-- For instance, we might want to know the mean IMDb ratings for all movies each year. 
-- We could calculate each number by a series of queries with different WHERE statements, like so:
SELECT year, AVG(imdb_rating) FROM movies GROUP BY year ORDER BY year;
SELECT category, SUM(downloads) FROM fake_apps GROUP BY category;


--********************************************************************************************
-- GROUP BY()
-- Sometimes, we want to GROUP BY a calculation done on a column.
-- For instance, we might want to know how many movies have IMDb ratings that round to 1, 2, 3, 4, 5. We could do this using the following syntax:
-- However, this query may be time-consuming to write and more prone to error.
-- SQL lets us use column reference(s) in our GROUP BY that will make our lives easier.
-- 1 is the first column selected
-- 2 is the second column selected
-- 3 is the third column selected
SELECT ROUND(imdb_rating), COUNT(name) FROM movies GROUP BY 1 ORDER BY 1;
SELECT category, price, AVG(downloads) FROM fake_apps GROUP BY category, price;


--********************************************************************************************
-- Having
-- In addition to being able to group data using GROUP BY, SQL also allows you to filter which groups to include and which to exclude.
-- For instance, imagine that we want to see how many movies of different genres were produced each year, but we only care about years and genres with at least 10 movies.
-- We can’t use WHERE here because we don’t want to filter the rows; we want to filter groups.
-- This is where HAVING comes in.
-- HAVING is very similar to WHERE. In fact, all types of WHERE clauses you learned about thus far can be used with HAVING.
SELECT year, genre, COUNT(name) FROM movies GROUP BY 1, 2 HAVING COUNT(name) > 10;