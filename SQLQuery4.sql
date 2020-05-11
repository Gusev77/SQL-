SET ANSI_NULLS ON
GO 
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE srCost
@Cost1 Real = 0,
@Cost2 Real = 0,
@Cost3 Real = 0
as
begin 
	set nocount on;
	select 'srCost' = (@Cost1+@Cost2+@Cost3)/3
	end
	go
	Exec srCost 10000, 4000, 7200
