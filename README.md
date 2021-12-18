# CardComProj
Interview project
SQL CREATE:

create table client (
	ID bigint not null primary key,
	CName varchar(50),
	CMail nvarchar(100),
	Birth datetime,
	Gender char,
	phone varchar(10)
	)

	go

	create procedure GetClients AS
SELECT ID, CName, CMail, Birth, phone, CASE WHEN Gender = 'M' THEN 'זכר' WHEN Gender = 'F' THEN 'נקבה' ELSE 'לא ידוע' END AS Gender
FROM     client
go

