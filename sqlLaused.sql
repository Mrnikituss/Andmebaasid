-- SQL kommentaar
-- xampp control pannel
-- coonect to
--local host
--nimi root 
--pass ei ole
--SQL
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
