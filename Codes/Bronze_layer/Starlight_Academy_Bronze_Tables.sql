Use Starlight_Academy_STG
go

--Select * from [Starlight_Academy_STG].[Bronze].[Starlight_Academy_200_dirty_records]

if not exists (select 1 from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where s.name ='bronze' and t.name = 'starlight_academy_marks_grd8')

Begin
Create Table bronze.starlight_academy_marks_grd8
(
		Student_ID Nvarchar (255),
		Student_name Nvarchar (255),
		Grade Nvarchar (255),
		Mathematics_Mark Nvarchar (255),
		English_Mark Nvarchar (255),
		Afrikaans_Mark int,
		Physical_Sciences_Mark Nvarchar (255),
		Life_Sciences_Mark Nvarchar (255),
		History_Mark Nvarchar (255),
		Geography_Mark Nvarchar (255),
		Average_Mark Nvarchar (255),
		Overall_Result Nvarchar (255)
)
end
go

Insert into bronze.starlight_academy_marks_grd8
Select
		Student_ID,
		Student_Name,
		Grade,
		Mathematics_Mark,
		English_Mark,
		Afrikaans_Mark,
		Physical_Sciences_Mark,
		Life_Sciences_Mark,
		History_Mark,
		Geography_Mark,
		Average_Mark,
		Overall_Result
from [Bronze].[Starlight_Academy_200_dirty_records]
where grade like '%8%' 

go

if not exists (select 1 from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where s.name ='bronze' and t.name = 'starlight_academy_marks_grd9')

Begin
Create Table bronze.starlight_academy_marks_grd9
(
		Student_ID Nvarchar (255),
		Student_name Nvarchar (255),
		Grade Nvarchar (255),
		Mathematics_Mark Nvarchar (255),
		English_Mark Nvarchar (255),
		Afrikaans_Mark int,
		Physical_Sciences_Mark Nvarchar (255),
		Life_Sciences_Mark Nvarchar (255),
		History_Mark Nvarchar (255),
		Geography_Mark Nvarchar (255),
		Average_Mark Nvarchar (255),
		Overall_Result Nvarchar (255)
)
end
go

Insert into bronze.starlight_academy_marks_grd9
Select
		Student_ID,
		Student_Name,
		Grade,
		Mathematics_Mark,
		English_Mark,
		Afrikaans_Mark,
		Physical_Sciences_Mark,
		Life_Sciences_Mark,
		History_Mark,
		Geography_Mark,
		Average_Mark,
		Overall_Result
from [Bronze].[Starlight_Academy_200_dirty_records]
where grade like '%9%'
go

if not exists (select 1 from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where s.name ='bronze' and t.name = 'starlight_academy_marks_grd10')

Begin
Create Table bronze.starlight_academy_marks_grd10
(
		Student_ID Nvarchar (255),
		Student_name Nvarchar (255),
		Grade Nvarchar (255),
		Mathematics_Mark Nvarchar (255),
		English_Mark Nvarchar (255),
		Afrikaans_Mark int,
		Physical_Sciences_Mark Nvarchar (255),
		Life_Sciences_Mark Nvarchar (255),
		History_Mark Nvarchar (255),
		Geography_Mark Nvarchar (255),
		Average_Mark Nvarchar (255),
		Overall_Result Nvarchar (255)
)
end
go

Insert into bronze.starlight_academy_marks_grd10
Select
		Student_ID,
		Student_Name,
		Grade,
		Mathematics_Mark,
		English_Mark,
		Afrikaans_Mark,
		Physical_Sciences_Mark,
		Life_Sciences_Mark,
		History_Mark,
		Geography_Mark,
		Average_Mark,
		Overall_Result
from [Bronze].[Starlight_Academy_200_dirty_records]
where grade in ('10','Grade 10', 'ten','TEN')
go

if not exists (select 1 from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where s.name ='bronze' and t.name = 'starlight_academy_marks_grd11')

Begin
Create Table bronze.starlight_academy_marks_grd11
(
		Student_ID Nvarchar (255),
		Student_name Nvarchar (255),
		Grade Nvarchar (255),
		Mathematics_Mark Nvarchar (255),
		English_Mark Nvarchar (255),
		Afrikaans_Mark int,
		Physical_Sciences_Mark Nvarchar (255),
		Life_Sciences_Mark Nvarchar (255),
		History_Mark Nvarchar (255),
		Geography_Mark Nvarchar (255),
		Average_Mark Nvarchar (255),
		Overall_Result Nvarchar (255)
)
end
go

Insert into bronze.starlight_academy_marks_grd11
Select
		Student_ID,
		Student_Name,
		Grade,
		Mathematics_Mark,
		English_Mark,
		Afrikaans_Mark,
		Physical_Sciences_Mark,
		Life_Sciences_Mark,
		History_Mark,
		Geography_Mark,
		Average_Mark,
		Overall_Result
from [Bronze].[Starlight_Academy_200_dirty_records]
where grade = 11
go

if not exists (select 1 from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where s.name ='bronze' and t.name = 'starlight_academy_marks_grd12')

Begin
Create Table bronze.starlight_academy_marks_grd12
(
		Student_ID Nvarchar (255),
		Student_name Nvarchar (255),
		Grade Nvarchar (255),
		Mathematics_Mark Nvarchar (255),
		English_Mark Nvarchar (255),
		Afrikaans_Mark int,
		Physical_Sciences_Mark Nvarchar (255),
		Life_Sciences_Mark Nvarchar (255),
		History_Mark Nvarchar (255),
		Geography_Mark Nvarchar (255),
		Average_Mark Nvarchar (255),
		Overall_Result Nvarchar (255)
)
end
go

Insert into bronze.starlight_academy_marks_grd12
Select
		Student_ID,
		Student_Name,
		Grade,
		Mathematics_Mark,
		English_Mark,
		Afrikaans_Mark,
		Physical_Sciences_Mark,
		Life_Sciences_Mark,
		History_Mark,
		Geography_Mark,
		Average_Mark,
		Overall_Result
from [Bronze].[Starlight_Academy_200_dirty_records]
where grade like '%12%'
go