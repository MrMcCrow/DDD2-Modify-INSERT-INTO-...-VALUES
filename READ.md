## Introduction
Unlike MS Access, MariaDB, Oracle, SQL Server, MySQL, **SQLite** has to re-create your tables and re-insert your data every time it runs.  Think about it this way - every time you click the RUN button you have a fresh database based upon what you have coded in SQL.  Any previous queries that are no longer in the repl will not be reflected in the next run of this SQLite database.
### Creating Tables
* Create tables in ```schema.sql``` e.g.
```
CREATE TABLE Movies(
       `movieID` int, 
       `movieName` varchar(30),
       `ageCertificate` varchar(5),
       `genre` varchar(20))
       `rating` int
       );
```
* Insert values using an SQL file per table (rename for easy reading) e.g. ```data_Movies.sql```
* Edit ```data.sql``` with all the new sql filenames. These ```sql``` files add the data into the tables every time you RUN:
  ```
  .read data_Movies.sql
  ```
* To run queries, write them in ```main.sql```
* Comment/uncomment queries using ```--``` to only run selected queries e.g.
```
SELECT * FROM a_table
-- SELECT * FROM another_table
```
### Validating Input
* Add validation by editing ```schema.sql``` using ideas in ```schema_constraints.sql``` e.g. adding restricted choice of genres:
```
CREATE TABLE Movies(
       `movieID` INT, 
       `movieName` VARCHAR(30),
       `ageCertificate` VARCHAR(5),
       `genre` VARCHAR(20) CHECK(fieldName IN ('action','comedy','horror')),
       `rating` INT
       );
```
* adding a range check of rating (1-5):
```
CREATE TABLE Movies(
       `movieID` INT, 
       `movieName` VARCHAR(30),
       `ageCertificate` VARCHAR(5),
       `genre` VARCHAR(20) CHECK(fieldName IN ('action','comedy','horror')),
       `rating` INT CHECK (rating >= 1 AND rating <= 5)
       );
```
* In these examples we already have length check set using ```VARCHAR(a_value)```
### Inserting Values into Tables
A table must have been created before you can insert data into it!
```
INSERT INTO pupils
      	(`studentNum`, `name`,`age`, `house`)
VALUES
        (1, 'Fizzle Lambie', 17, 'Levett'),
        (2, 'Broj Hatton', 15, 'Vardy'),
        (3, 'Slappy Tomlinson', 17, 'Gifford'),
        (4, 'Basher Birch', 11, 'Heath'),
        (5, 'Wimpo Tibbott', 16, 'Jeune');

```
You can add rows later.  Values must be in the correct order, the same as the order of the field names:
```
INSERT INTO pupils
      	(`studentNum`, `name`,`age`, `house`)
VALUES
        (6, 'Piggy Trott', 15, 'Evans')
```
You can avoid typing in the field names, but this can trip you up if you get them in the wrong order:
```
INSERT INTO pupils
VALUES
        (7, 'Lorry Evans', 16, 'Prince Lee')
```
### Updating Values
```
UPDATE pupils 
SET house = “Evans” 
WHERE house = “Jeune”;
```
```
UPDATE pupils 
SET age = 16 
WHERE studentNum = 4;
```
### Selecting
```
SELECT * 
FROM pupils
WHERE age = 17;
```
```
SELECT name, house 
FROM pupils
WHERE house = "Levett";
```
```
SELECT name, studentNum 
FROM pupils
WHERE house = "Evans";
```
### Deleting
Deleting removes an entire record
```
DELETE FROM pupils 
WHERE name = "Bob Jordan";

```
### Inner Joins
You need to find a path between different tables using **primary** and **foreign keys**. Once you have identified the **keys** or other fields that **join** the two or more tables, you can use the power of SQL to SELECT or UPDATE data.
```
SELECT title, guidance.surname, name, pupils.age
FROM pupils
INNER JOIN guidance
ON pupils.house = guidance.house;
```