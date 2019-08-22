--********************************************************************************************
-- AS
-- AS is a keyword in SQL that allows you to rename a column or table using an alias. 
-- The new name can be anything you want as long as you put it inside of single quotes.
-- Here we renamed the name column as Titles.
SELECT name AS 'titles' FROM movies


--********************************************************************************************
-- DISTINCT
-- When we are examining data in a table, it can be helpful to know what distinct values exist in a particular column.
-- DISTINCT is used to return unique values in the output. It filters out all duplicate values in the specified column(s).
SELECT column_name FROM DT_name;
SELECT DISTINCT column_name FROM DT_name;

--********************************************************************************************
-- WHERE
-- We can restrict our query results using the WHERE clause in order to obtain only the information we want.
-- WHERE clause filters the result set to only include rows where the following condition is true.
-- Comparison operators used with the WHERE clause are:
-- = equal to
-- != not equal to
-- > greater than
-- < less than
-- >= greater than or equal to
-- <= less than or equal to
SELECT * FROM DT_name WHERE column_name > 8;
SELECT * FROM DT_name WHERE column_name = 2014;


--********************************************************************************************
-- LIKE
-- LIKE can be a useful operator when you want to compare similar values.
-- LIKE is a special operator used with the WHERE clause to search for a specific pattern in a column
-- name LIKE 'Se_en' is a condition evaluating the name column for a specific pattern.
-- Se_en represents a pattern with a wildcard character.
-- The _ means you can substitute any individual character here without breaking the pattern. The names Seven and Se7en both match this pattern.
SELECT * FROM DT_name WHERE column_name LIKE 'Tamayo';
SELECT * FROM DT_name WHERE column_name LIKE 'Ta_ayo';


-- The percentage sign % is another wildcard character that can be used with LIKE.
-- This statement below filters the result set to only include movies with names that begin with the letter ‘A’:
-- % is a wildcard character that matches zero or more missing letters in the pattern. For example:
-- %a matches all movies that end with ‘a’
-- We can also use % both before and after a pattern:
SELECT * FROM DT_name WHERE column_name LIKE 'A%';
SELECT * FROM DT_name WHERE column_name LIKE '%man%';



--********************************************************************************************
-- NULL
-- It is not possible to test for NULL values with comparison operators, such as = and !=.
-- Instead, we will have to use these operators:
-- IS NULL
-- IS NOT NULL
SELECT * FROM DT_name WHERE column_name IS NOT NULL;


--********************************************************************************************
-- BETWEEN
-- The BETWEEN operator is used in a WHERE clause to filter the result set within a certain range. It accepts two values that are either numbers, text or dates.
-- For example, this statement filters the result set to only include movies with years from 1990 up to, and including 1999.
SELECT * FROM movies WHERE year BETWEEN 1990 AND 1999;

-- When the values are text, BETWEEN filters the result set for within the alphabetical range.
-- In this statement, BETWEEN filters the result set to only include movies with names that begin with the letter ‘A’ up to, but not including ones that begin with ‘J’.
SELECT * FROM movies WHERE name BETWEEN 'A' AND 'J';


--********************************************************************************************
-- AND
-- Sometimes we want to combine multiple conditions in a WHERE clause to make the result set more specific and useful.
-- One way of doing this is to use the AND operator. Here, we use the AND operator to only return 90’s romance movies.
SELECT * FROM movies WHERE year BETWEEN 1990 AND 1999 AND genre = 'Romance';
SELECT * FROM movies WHERE year < 1995 AND genre = 'horror';


--********************************************************************************************



--********************************************************************************************
--********************************************************************************************
--********************************************************************************************
--********************************************************************************************
--********************************************************************************************
--********************************************************************************************
--********************************************************************************************
