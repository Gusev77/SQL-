Use Autobuspark
GO
select * from Table_Voditely;

select User_ID, FIO, Oklad from Table_Voditely;
select [Mest_in_bus], [ID_Autobus] ,[Kolvo_bus] from Table_bus order by [Kolvo_bus];
select top  2 [Kolvo_bus], [ID_Autobus] from Table_bus order by [Kolvo_bus];

select * from Table_bus where [Mest_in_bus]>34;

select * from Table_bus where [Kolvo_bus] between 12 and 55;

select * from Table_Voditely where [Oklad] in (80000, 27000);

select * from Table_Voditely where FIO like 'Ñ%';

select * from Table_bus where [Mest_in_bus] is not null;

select FIO from Table_Voditely group by FIO having count ([Oklad])<60000; 

select distinct FIO from Table_Voditely;

select FIO, Stag, Adress from Table_Voditely where  exists(select * from Table_Voditely where Stag='3');

select * from Table_bus where ID_Autobus in(1, 3);





