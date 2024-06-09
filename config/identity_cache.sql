-- IDENTIFY CACHE
CREATE DATABASE [demo]
GO

USE [demo]
GO

CREATE TABLE dbo.Employee(
EmpId Int Identity(1,1) Primary Key,
EmpName Varchar(20)
);

INSERT INTO dbo.Employee
(EmpName)
VALUES
('joe'),
('zoe'),
('noe'),
('boe'),
('moe');

-- Insert Some Records But No Commit
BEGIN TRAN;
INSERT INTO dbo.Employee
(EmpName)
VALUES
('neptune'),
('mars'),
('optimal9'),
('oracle');

-- Shutdown Instance
-- Referenec shutdown_instance.sql

-- Restart Instanace Again

INSERT INTO dbo.Employee
(EmpName)
VALUES
('customer'),
('accounting'),
('card'),
('payment');

SELECT * FROM dbo.Employee

-- set identity cache off
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = OFF
GO

-- Revise Previous Steps Before that DROP TABLE
USE [demo]
GO

DROP TABLE dbo.Employee;

CREATE TABLE dbo.Employee(
EmpId Int Identity(1,1) Primary Key,
EmpName Varchar(20)
);

INSERT INTO dbo.Employee
(EmpName)
VALUES
('joe'),
('zoe'),
('noe'),
('boe'),
('moe');

-- Insert Some Records But No Commit
BEGIN TRAN;
INSERT INTO dbo.Employee
(EmpName)
VALUES
('neptune'),
('mars'),
('optimal9'),
('oracle');

-- Shutdown Instance
-- Referenec shutdown_instance.sql

-- Restart Instanace Again
USE [demo]
GO

INSERT INTO dbo.Employee
(EmpName)
VALUES
('customer'),
('accounting'),
('card'),
('payment');

SELECT * FROM dbo.Employee