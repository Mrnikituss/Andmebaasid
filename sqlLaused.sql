-- SQL kommentaar
-- SQL Server Managment Stuudio
-- coonect to
-- (localdb)\MSSQLLocalDB
-- Authentification WINDOWS - admini õigused localhostis
-- Authentification SQL -
CREATE DATABASE bezdrobnoi;
USE bezdrobnoi;
create table opilane(
opilaneId int Primary key identity(1,1),
eesnimi varchar(25),
perenimi varchar(30) Unique,
synniaeg date,
aadress text,
opilaskodu bit
);
select * from opilane;

drop table opilane

insert into opilane(eesnimi, perenimi, synniaeg, aadress,opilaskodu)
Values('Nikita', 'Bezdrobnoi', '2007-11-03', 'Tallinn', 1),
('Nikita', 'Misteringo', '2007-11-03', 'Tallinn', 1),
('Nikita', 'Steve', '2007-11-03', 'Tallinn', 1);
