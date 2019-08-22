--********************************************************************************************
--Seleccionar todo de una DB
SELECT * FROM DT_name;


--********************************************************************************************
-- CREATE
-- Crear una DB nueva
CREATE TABLE DT_name (
    column_1 data_type,
    column_2 data_type,
    column_3 data_type,
);
CREATE TABLE DT_name (
    id INTEGER,
    name TEXT,
    age INTEGER,
);


--********************************************************************************************
-- INSERT
-- The INSERT statement inserts a new row into a table. 
-- You can use the INSERT statement when you want to add new records. 
INSERT INTO DT_name (id, name, age) VALUES (1, 'Jose Tamayo', 22);


--********************************************************************************************
-- SELECT
-- statements are used to fetch data from a database. 
-- In the statement below, SELECT returns all data in the name column of the celebs table.
SELECT name FROM DT_name;


--********************************************************************************************
-- ALTER 
-- The ALTER TABLE statement adds a new column to a table. 
-- You can use this command when you want to add columns to a table. 
ALTER TABLE DT_name ADD COLUMN new_column_name TEXT;


--********************************************************************************************
-- UPDATE 
-- The UPDATE statement edits a row in a table. 
-- You can use the UPDATE statement when you want to change existing records. 
UPDATE DT_name SET column_name = 'Tamayo Alejandro' WHERE id = 4;


--********************************************************************************************
-- DELETE 
-- The DELETE FROM statement deletes one or more rows from a table. 
-- You can use the statement when you want to delete existing records. 
DELETE FROM DT_name WHERE column_name IS NULL;


--********************************************************************************************
-- CONTRAINTS 
-- Constraints that add information about how a column can be used are invoked after specifying the data type for a column. 
-- They can be used to tell the database to reject inserted data that does not adhere to a certain restriction. 
CREATE TABLE celebs (
   id INTEGER PRIMARY KEY, 
   name TEXT UNIQUE,
   date_of_birth TEXT NOT NULL,
   date_of_death TEXT DEFAULT 'Not Applicable'
);


--********************************************************************************************