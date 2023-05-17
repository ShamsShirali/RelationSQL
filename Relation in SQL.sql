Create Database Office

Use Office

Create Table Employees
(
Id int identity primary key,
FullName nvarchar(100) NOT NULL Check(LEN(FullName)>3),
Salary money Check(Salary>0),
Email nvarchar(100) NOT NULL Unique,
DepartmentId int Foreign Key References Departments(Id)
)

Create Table Departments
(
Id int identity primary key,
Name nvarchar(30) NOT NULL Check(LEN(Name)>2)
)

Truncate Table Employees

--Truncate Table Departments