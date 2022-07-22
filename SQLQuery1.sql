create database Employee_Payroll
USE Employee_Payroll;
create table Employee_Payroll
(
	Id		INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	name	VARCHAR (150) NOT NULL,
	Salary	float NOT NULL ,
	Start	Date NOT NULL
);
Insert into Employee_Payroll
(
	[name] , [Salary] , [start] )Values 
('Vijay Kumar ', 100000 ,'12-10-2021'),
('Nitish Kumar' , 50000 , '03-01-2014'),
('Md Ayub' , 200000 , '06-04-2019')

Select * FROM Employee_Payroll;
SELECT Salary  FROM Employee_Payroll 
Where name = 'Vijay Kumar';
SELECT * FROM Employee_Payroll
Where Start BETWEEN CAST('03-01-2014' AS date) AND ('06-04-2019');

ALTER table Employee_Payroll ADD Gender varchar(6);
UPDATE Employee_Payroll Set Gender = 'M' where name = 'Vijay Kumar ' or name = 'Nitish Kumar' or name = 'Md Ayub';
Insert into Employee_Payroll
(
	[name] , [Salary] , [start] )Values 
('Shiwani Gupta ', 150000 ,'12-10-2020');
UPDATE Employee_Payroll Set Gender = 'F' Where name = 'Shiwani Gupta';
SELECT * FROM Employee_Payroll;
SELECT SUM (Salary) FROM Employee_Payroll; 
SELECT AVG (Salary) FROM Employee_Payroll; 
SELECT MIN (Salary) FROM Employee_Payroll; 
SELECT MAX (Salary) FROM Employee_Payroll; 
SELECT COUNT (Salary) FROM Employee_Payroll;
SELECT SUM (Salary) FROM Employee_Payroll Where Gender = 'M'; 
SELECT AVG (Salary) FROM Employee_Payroll Where Gender = 'M'; 
SELECT MIN (Salary) FROM Employee_Payroll Where Gender = 'M'; 
SELECT MAX (Salary) FROM Employee_Payroll Where Gender = 'M';  
SELECT COUNT (Salary) FROM Employee_Payroll Where Gender ='M';
SELECT SUM (Salary) FROM Employee_Payroll Where Gender = 'F'; 
SELECT AVG (Salary) FROM Employee_Payroll Where Gender = 'F'; 
SELECT MIN (Salary) FROM Employee_Payroll Where Gender = 'F'; 
SELECT MAX (Salary) FROM Employee_Payroll Where Gender = 'F';  
SELECT COUNT (Salary) FROM Employee_Payroll Where Gender ='F';


ALTER table Employee_Payroll ADD PhoneNumber float , Address varchar(300) ; 
ALTER table Employee_Payroll ADD Department varchar(80) NOT NULL Default 'Dept engg' 
ALTER table Employee_Payroll drop column Department;
ALTER TABLE Employee_Payroll ALTER COLUMN PhoneNumber BigInt
UPDATE Employee_Payroll Set PhoneNumber = 8847283534 , Address = '1-2-3Bihar' , Department = 'Engg' where Id = 1;
UPDATE Employee_Payroll Set PhoneNumber = 8847283536 , Address = '1-2-3patna' , Department = 'resourse' where Id = 2;
SELECT * FROM Employee_Payroll; 
