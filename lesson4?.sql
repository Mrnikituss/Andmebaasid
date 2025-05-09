create table logi(
id int primary key identity(1,1),
tegevus varchar(25),
kasutaja varchar(25),
aeg datetime,
andmed text
)

create table puud(
puudid int primary key identity(1,1),
puudNimi varchar(25),
pikkus int,
aasta int,
)

insert into puud(puudNimi, pikkus,aasta)
values('N1',123,321)

create trigger puuLisamine
on puud
for insert
as
insert into logi(
kasutaja,tegevus,aeg,andmed
)
select
SYSTEM_USER,
'puu on lisatud',
GETDATE(),
concat(inserted.puudNimi,', ',inserted.pikkus,', ',inserted.aasta)
from inserted

insert into puud(puudNimi,pikkus,aasta)
values('N1',22,2000)
select * from puud
select * from logi

drop trigger puuLisamine

create trigger puukustutamine
on puud
for delete
as
insert into logi(
kasutaja,tegevus,aeg,andmed
)
select
SYSTEM_USER,
'puu on kustatud',
GETDATE(),
concat(deleted.puudNimi,', ',deleted.pikkus,', ',deleted.aasta)
from deleted

delete from puud where puudid=1

select * from puud
select * from logi

create trigger puuuuemdamine
on puud
for delete
as
insert into logi(
kasutaja,tegevus,aeg,andmed
)
select
SYSTEM_USER,
'puu on uuendud',
GETDATE(),
concat('vana puu - ',deleted.puudNimi,', ',deleted.pikkus,', ',deleted.aasta,
'uus puu - ',inserted.puudNimi,', ',inserted.pikkus,', ',inserted.aasta
)
from deleted inner join inserted
on deleted.puudid=inserted.puudid

update puud set pikkus=255555555, aasta=1900
where puudid=3

select * from puud
select * from logi
