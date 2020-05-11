use Autobuspark
 go
 alter view dbo.View_bus
 as
 Select Mest_in_bus as Мест,
 ID_Autobus as Айди,
 Kolvo_bus as Количество,
 Adress_park as Адрес
 FROM dbo.Table_bus
 go
 insert into dbo.View_bus values
(90, 7, 12,'Фрязено 1');
go

create view dbo.Rem_view as 
select ID_Remont, FIO_Masters, Cost 
from dbo.Table_Remont 
where Cost < '11000' 
with check option 
go  


