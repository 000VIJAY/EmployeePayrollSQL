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
