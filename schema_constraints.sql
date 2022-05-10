-- The following may be added to the CREATE statements in schema.sql

-- Primary Key Syntax (added after field name and NOT NULL)
--     PRIMARY KEY (fieldName)
--          or for compound PK
--     CONSTRAINT PK_compoundFieldName PRIMARY KEY (field1,field2)

-- Foreign Key Syntax (added after field list)
--     FOREIGN KEY (field name) REFERENCES tableName(fieldName)

-- Text Field Max Size
--     Edit (255) to required length
-- Note that in SQLite this doesn't actually matter, but it DOES in other databases, so you need to demonstrate this knowledge to SQA

-- Validation of length of text (added after create statement as new statement
--     CHECK (LENGTH(fieldName) > value)
--      makes sure a text is a minimum length
-- or  CHECK (LENGTH(fieldName) < value)
--      makes sure a text isn't too long

-- Range Check (added after field list)
--     CHECK (fieldName >= value)
--     CHECK (fieldName >= value AND fieldName <= value2)

-- Restricted choice
--     CHECK(fieldName in ('value1','value2','value3')) 

-- Note
-- At N5 Check constraints (that are ignored by a MySQL server) 
-- are being used instead of triggers.