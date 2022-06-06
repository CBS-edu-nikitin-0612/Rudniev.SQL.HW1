/* aditional task */

Create database EmptyDB
on
(
	name = 'EmptyDB',
	filename = 'D:\bla\bla\bla\EmptyDB.mdf',
	size = 1mb,
	maxsize = 3mb,
	filegrowth = 1mb
)
log on
(
	name = 'LogEmptyDB',
	filename = 'D:\bla\bla\bla\EmptyDB.ldf',
	size = 1mb,
	maxsize = 3mb,
	filegrowth = 1mb
)
collate cyrillic_generic_ci_as

/* task 2 */

Create database MyDB
on
(
	name = 'MyDB',
	filename = 'D:\bla\bla\bla\MyDB.mdf',
	size = 5mb,
	maxsize = 25mb,
	filegrowth = 5mb
)
log on
(
	name = 'LogMyDB',
	filename = 'D:\bla\bla\bla\MyDB.ldf',
	size = 3mb,
	maxsize = 15mb,
	filegrowth = 3mb
)
collate cyrillic_generic_ci_as

/* task 3 */

use MyDB

create table Employees
(
	Id int identity not null,
	Name nvarchar(20) not null,
	PhoneNumber char(13) not null
)

create table Salarys
(
	EmployeeId int not null,
	Salary money not null,
	Position nvarchar(30) not null
)

create table EmployeesInfo
(
	EmployeeId int not null,
	MaritalStatus char(5) null,
	BirthDay date null,
	Residence nvarchar(40) not null
)