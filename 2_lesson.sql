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

--make new table ryhm 

create table ryhm(
ryhmID int not null Primary key identity(1,1),
ryhm varchar(10) Unique,
osukond varchar(20) 
);

select * from ryhm;

drop table ryhm

insert into ryhm(ryhm,osukond)
Values('TITpv24', 'IT'),('KRRpv23', 'rätsepp');

--add new rühm id table oppilane
alter table opilane add ryhmID int;

select * from opilane;
--add seconder key

alter table opilane add foreign key(ryhmID) references ryhm(ryhmID);
--proverka
insert into opilane(eesnimi, perenimi, synniaeg, aadress,opilaskodu,ryhmID)
Values('mark', 'hay', '2007-11-03', 'Tallinn', 1, 2);

select * from opilane;
--all who use tables
select * from opilane join ryhm on opilane.ryhmID=ryhm.ryhmID;
--something specify
select opilane.perenimi from opilane join ryhm on opilane.ryhmID=ryhm.ryhmID;
--how to make it shorter
select o.perenimi,r.ryhm from opilane o join ryhm r on o.ryhmID=r.ryhmID;

create table hinne(
hinneId int not null Primary key identity(1,1),
hinne int,
opilaneId int,
oppeaine varchar(30)
);
alter table hinne add foreign key (opilaneId) references opilane(opilaneId);
insert into hinne(opilaneId,oppeaine, hinne)
Values(2,'aaa',3);
select * from hinne;

create table opetaja(
opetajaId int Primary key identity(1,1),
nimi varchar(25),
perenimi varchar(30) Unique,
telefon text,
);
alter table ryhm add opetajaId int;
alter table ryhm add foreign key (opetajaId) references opetaja(opetajaId);

insert into opetaja(nimi, perenimi,telefon)
Values('bbb','ccc','+372 xxxxxxxx');
select * from ryhm;

UPDATE ryhm SET opetajaId = '3' WHERE ryhmId = 2;
