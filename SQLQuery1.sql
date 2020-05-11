use Autobuspark 
GO

TRUNCATE  TABLE  dbo.Table_Remont;
TRUNCATE  TABLE  dbo.Table_Passengers;
TRUNCATE  TABLE  dbo.Table_Stop;
DELETE Table_bus;     /* ��� FK ������������ DELETE */
DELETE Table_Voditely;
DELETE Table_Way;


/*
TRUNCATE  TABLE  dbo.Table_Way;
TRUNCATE  TABLE  dbo.Table_bus;
TRUNCATE  TABLE  dbo.Table_Voditely;
*/


INSERT INTO dbo.Table_bus ([ID_Autobus], [Kolvo_bus], [Mest_in_bus], [Adress_park]) 
VALUES (1, 5, 63, '���������');
INSERT INTO dbo.Table_bus ([ID_Autobus], [Kolvo_bus], [Mest_in_bus], [Adress_park])
VALUES (2, 21, 55, '������ 2');
INSERT INTO dbo.Table_bus ([ID_Autobus], [Kolvo_bus], [Mest_in_bus], [Adress_park])
VALUES (3, 37, 32, '����������');
INSERT INTO dbo.Table_bus ([ID_Autobus], [Kolvo_bus], [Mest_in_bus], [Adress_park]) 
VALUES (4, 12, 63, '�������� 3');
INSERT INTO dbo.Table_bus ([ID_Autobus], [Kolvo_bus], [Mest_in_bus], [Adress_park])
VALUES (5, 90, 81, '������ 1');
INSERT INTO dbo.Table_bus ([ID_Autobus], [Kolvo_bus], [Mest_in_bus], [Adress_park]) 
VALUES (6, 10, 78, '��������');
SELECT * FROM dbo.Table_bus;  

INSERT INTO Table_Voditely (User_ID, FIO, Oklad, Stag, Adress) 
VALUES (1, '������� �. �.', 40000, 5, '�������� ��� 2');
INSERT INTO Table_Voditely (User_ID, FIO, Oklad, Stag, Adress) 
VALUES (2, '�������� �. �.', 23670, 3, '������ ��� 4');
INSERT INTO Table_Voditely (User_ID, FIO, Oklad, Stag, Adress) 
VALUES (3, '������ �. �.', 27000, 8, '��������� ��� 1 ��� 3');
INSERT INTO Table_Voditely (User_ID, FIO, Oklad, Stag, Adress) 
VALUES (4, '����� �. �.', 80000, 23, '��������� ��� 1 ���� 1');
SELECT * FROM dbo.Table_Voditely 
DELETE FROM dbo.Table_Voditely WHERE User_ID = 10

SELECT * FROM dbo.Table_Voditely 
UPDATE dbo.Table_Voditely SET FIO = '������ �. �.'
where User_ID = '3'

SELECT * FROM dbo.Table_Voditely 
TRUNCATE  TABLE  dbo.OWNER
SELECT * FROM dbo.OWNER

INSERT INTO Table_Voditely (User_ID, FIO, Oklad, Stag, Adress) 
VALUES (5, '���������� �. �.', 100000, 23, '���������� ��� 5');
INSERT INTO Table_Voditely (User_ID, FIO, Oklad, Stag, Adress) 
VALUES (6, '����� �. �.', 45000, 3, '���. ��������, ��� 32');

INSERT INTO  Table_Remont (ID_Remont, FIO_Masters, Time_remont, Type, Cost) 
VALUES (1, '����� �. �.', '00:20:00', 1, 5000);
INSERT INTO  Table_Remont (ID_Remont, FIO_Masters, Time_remont, Type, Cost) 
VALUES (2, '�������� �. �.', '01:50:00', 3, 37500);
INSERT INTO  Table_Remont (ID_Remont, FIO_Masters, Time_remont, Type, Cost) 
VALUES (3, '���� �. �.', '00:43:00', 2, 24710);
INSERT INTO  Table_Remont (ID_Remont, FIO_Masters, Time_remont, Type, Cost) 
VALUES (4, '���� �. �.', '00:10:00', 1, 73000);
INSERT INTO  Table_Remont (ID_Remont, FIO_Masters, Time_remont, Type, Cost) 
VALUES (5, '����� �. �.', '00:52:00', 2, 15000);
INSERT INTO  Table_Remont (ID_Remont, FIO_Masters, Time_remont, Type, Cost) 
VALUES (6, '������ �. �.', '00:05:00', 1, 3000);
SELECT * FROM dbo.Table_Remont;   


INSERT INTO  dbo.Table_Way ([ID_Way], [Numberway], [Time], [ID_Autobus]) 
VALUES (1, 619, '01:10:00', 1);
INSERT INTO  dbo.Table_Way ([ID_Way], [Numberway], [Time], [ID_Autobus]) 
VALUES (2, 742, '00:55:00', 2);
INSERT INTO  dbo.Table_Way ([ID_Way], [Numberway], [Time], [ID_Autobus]) 
VALUES (3, 512, '00:40:00', 3);
INSERT INTO  dbo.Table_Way ([ID_Way], [Numberway], [Time], [ID_Autobus]) 
VALUES (4, 738, '00:10:00', 6);
INSERT INTO  dbo.Table_Way ([ID_Way], [Numberway], [Time], [ID_Autobus]) 
VALUES (5, 619, '01:15:00', 4);
INSERT INTO  dbo.Table_Way ([ID_Way], [Numberway], [Time], [ID_Autobus]) 
VALUES (6, 780, '01:05:00', 5);
SELECT * FROM dbo.Table_Way;  

/* table ���������*/

INSERT INTO dbo.Table_Stop ([ID_Stop], [Type_Stop], [ID_Way], [Ticket_office])
VALUES (1, 'o', 2, '��');
INSERT INTO dbo.Table_Stop ([ID_Stop], [Type_Stop], [ID_Way], [Ticket_office])
VALUES (2, 'o', 5, '���');
INSERT INTO Table_Stop ([ID_Stop], [Type_Stop], [ID_Way], [Ticket_office])
VALUES (3, '�', 1, '��');
INSERT INTO Table_Stop ([ID_Stop], [Type_Stop], [ID_Way], [Ticket_office])
VALUES (4, '�', 4, '���');
INSERT INTO Table_Stop ([ID_Stop], [Type_Stop], [ID_Way], [Ticket_office])
VALUES (5, '�', 2, '���');
INSERT INTO Table_Stop ([ID_Stop], [Type_Stop], [ID_Way], [Ticket_office])
VALUES (6, '�', 3, '��');
SELECT * FROM dbo.Table_Passengers;  



INSERT INTO Table_Passengers([ID_Pas], [FIO_passagers], [User_ID], [FIO_Voditely])
VALUES (1, '������� �. �.', 3, '������ �. �.');
INSERT INTO Table_Passengers([ID_Pas], [FIO_passagers], [User_ID], [FIO_Voditely])
VALUES (2, '������� �. �.', 1, '������� �. �.');
INSERT INTO Table_Passengers([ID_Pas], [FIO_passagers], [User_ID], [FIO_Voditely])
VALUES (3, '������ �. �.', 5, '���������� �. �.');
INSERT INTO Table_Passengers([ID_Pas], [FIO_passagers], [User_ID], [FIO_Voditely])
VALUES (4, '������� �. �.', 3, '������ �. �.');
INSERT INTO Table_Passengers([ID_Pas], [FIO_passagers], [User_ID], [FIO_Voditely])
VALUES (5, '�������� �. �.', 4, '������ �. �.');
INSERT INTO Table_Passengers([ID_Pas], [FIO_passagers], [User_ID], [FIO_Voditely])
VALUES (6, '��������� �. �.', 2, '�������� �. �.');
SELECT * FROM dbo.Table_Passengers;  



