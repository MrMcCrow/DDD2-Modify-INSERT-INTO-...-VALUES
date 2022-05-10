-- this imports and executes the schema, then the data
.system clear

.read schema.sql      
.read data.sql        
.mode column          
.headers on           
.separator ROW "\n"
.nullvalue NULL
-- -------------------------------------------------------

-- these two queries display all items in the two tables
SELECT * FROM pupils;
SELECT * FROM guidance;
