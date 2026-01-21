
-- USE master;
-- GO

-- IF NOT EXISTS (
--       SELECT name
--       FROM sys.databases
--       WHERE name = N'.NETTrainings'
--       )
--    CREATE DATABASE [.NETTrainings];
-- GO

-- IF SERVERPROPERTY('ProductVersion') > '12'
--    ALTER DATABASE [.NETTrainings] SET QUERY_STORE = ON;
-- GO



-- -- Create a new table called 'Customers' in schema 'dbo'
-- -- Drop the table if it already exists
-- IF OBJECT_ID('dbo.Customers', 'U') IS NOT NULL
--    DROP TABLE dbo.Customers;
-- GO

-- -- Create the table in the specified schema
-- CREATE TABLE dbo.Customers (
--    CustomerId INT NOT NULL PRIMARY KEY, -- primary key column
--    [Name] NVARCHAR(50) NOT NULL,
--    [Location] NVARCHAR(50) NOT NULL,
--    [Email] NVARCHAR(50) NOT NULL
--    );
-- GO

-- SELECT name
-- FROM sys.tables;

-- SELECT name
-- FROM sys.objects
-- WHERE type_desc = '.NETTrainings';


-- CREATE TABLE Employees (
--     -- Column-level constraints
--     EmployeeID INT PRIMARY KEY, -- Primary Key (NOT NULL and UNIQUE)
--     FirstName VARCHAR(50) NOT NULL, -- Cannot be NULL
--     LastName VARCHAR(50) NOT NULL,
--     Email VARCHAR(100) UNIQUE, -- Values must be unique
--     Salary DECIMAL(10, 2) CHECK (Salary > 0), -- Values must satisfy a condition
--     DepartmentID INT,
--     StartDate DATE DEFAULT GETDATE(), -- Sets a default value if none provided

--     -- Table-level constraints
--     -- Unique constraint across multiple columns
--     CONSTRAINT UQ_FullName UNIQUE (FirstName, LastName)
-- );



SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    CHARACTER_MAXIMUM_LENGTH, 
    IS_NULLABLE
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'Employees';
