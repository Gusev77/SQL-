use Autobuspark
 go
 alter view dbo.View_bus
 as
 Select Mest_in_bus as ����,
 ID_Autobus as ����,
 Kolvo_bus as ����������,
 Adress_park as �����
 FROM dbo.Table_bus
 go
 insert into dbo.View_bus values
(90, 7, 12,'������� 1');
go

create view dbo.Rem_view as 
select ID_Remont, FIO_Masters, Cost 
from dbo.Table_Remont 
where Cost < '11000' 
with check option 
go  


