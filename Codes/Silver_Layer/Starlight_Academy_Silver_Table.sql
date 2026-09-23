Use Starlight_Academy_DWH
go

if not exists (select 1 from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where s.name ='silver' and t.name = 'starlight_academy_marks_grd8')

Begin
Create Table silver.starlight_academy_marks_grd8
(
		Student_ID Nvarchar (255),
		Student_name Nvarchar (255),
		Grade Nvarchar (255),
		Mathematics_Mark int,
		English_Mark int,
		Afrikaans_Mark int,
		Physical_Sciences_Mark int,
		Life_Sciences_Mark int,
		History_Mark int,
		Geography_Mark int,
		Average_Mark decimal (5,2),
		Overall_Result Nvarchar (255)
)
end
go

Insert into silver.starlight_academy_marks_grd8
Select
		A.Student_ID,
		A.Student_Name,
		A.Grade,
		A.Mathematics_Mark,
		A.English_Mark,
		A.Afrikaans_Mark,
		A.Physical_Sciences_Mark,
		A.Life_Sciences_Mark,
		A.History_Mark,
		A.Geography_Mark,
		(
		Cast (A.Mathematics_Mark as decimal (5,2))+
		Cast(A.English_Mark as decimal (5,2))+
		Cast(A.Afrikaans_Mark as decimal (5,2))+
		Cast(A.Physical_Sciences_Mark as decimal (5,2))+
		Cast(A.Life_Sciences_Mark as decimal (5,2))+
		Cast(A.History_Mark as decimal (5,2))+
		Cast(A.Geography_Mark as decimal (5,2))
		)*1.0 /7 as Average_Mark,
		A.Overall_Result
from [Starlight_Academy_STG].[Bronze].[starlight_Academy_marks_grd8] A
where grade = 8 
		AND NOT EXISTS (select 1
						from silver.starlight_academy_marks_grd8 B
						where A.Student_ID = B.Student_ID 
						)

go

Select * from silver.starlight_academy_marks_grd8

if not exists (select 1 from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where s.name ='silver' and t.name = 'starlight_academy_marks_grd9')

Begin
Create Table silver.starlight_academy_marks_grd9
(
		Student_ID Nvarchar (255),
		Student_name Nvarchar (255),
		Grade Nvarchar (255),
		Mathematics_Mark int,
		English_Mark int,
		Afrikaans_Mark int,
		Physical_Sciences_Mark int,
		Life_Sciences_Mark int,
		History_Mark int,
		Geography_Mark int,
		Average_Mark decimal (5,2),
		Overall_Result Nvarchar (255)
)
end
go

Insert into silver.starlight_academy_marks_grd9
Select
		Case
		When A.Student_ID ='ID133' then '133' else Student_ID
		end,
		A.Student_Name,
		Case
		when A.Grade in ('09','G9') then 9
		else A.Grade
		End,
		A.Mathematics_Mark,
		Cast(Replace(A.English_Mark, '%', '') as decimal (5,2)),
		A.Afrikaans_Mark,
		A.Physical_Sciences_Mark,
		A.Life_Sciences_Mark,
		A.History_Mark,
		Cast(Replace (A.Geography_Mark, ',', '.')  as decimal (5,2)),
		(
		Cast (A.Mathematics_Mark as decimal (5,2))+
		Cast(Replace(A.English_Mark, '%', '') as decimal (5,2))+
		Cast(A.Afrikaans_Mark as decimal (5,2))+
		Cast(A.Physical_Sciences_Mark as decimal (5,2))+
		Cast(A.Life_Sciences_Mark as decimal (5,2))+
		Cast(A.History_Mark as decimal (5,2))+
		Cast(Replace (A.Geography_Mark, ',', '.')  as decimal (5,2))
		)*1.0 /7 as Average_Mark,
		Case 
		when A.Overall_Result in ('PASS','passed') then 'Pass'
		else A.Overall_Result
		end
from [Starlight_Academy_STG].[Bronze].[starlight_academy_marks_grd9] A
where LOWER(LTRIM(RTRIM(A.Grade))) IN ('9','09','G9')
		AND NOT EXISTS (select 1
						from silver.starlight_academy_marks_grd9 B
						where A.Student_ID = B.Student_ID 
						)
go

if not exists (select 1 from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where s.name ='silver' and t.name = 'starlight_academy_marks_grd10')

Begin
Create Table silver.starlight_academy_marks_grd10
(
		Student_ID Nvarchar (255),
		Student_name Nvarchar (255),
		Grade Nvarchar (255),
		Mathematics_Mark int,
		English_Mark int,
		Afrikaans_Mark int,
		Physical_Sciences_Mark int,
		Life_Sciences_Mark int,
		History_Mark int,
		Geography_Mark int,
		Average_Mark decimal (5,2),
		Overall_Result Nvarchar (255)
)
end
go

Insert into silver.starlight_academy_marks_grd10
Select
		Case
		when A.Student_ID = '003' then 3
		when A.Student_ID = 'STU-48' then 48 else A.Student_id
		end as Student_ID,
		Case 
		when A.Student_Name = 'NADIA PHILLIPS' then 'Nadia Phillips' 
		when A.Student_Name = 'CHRISTOPHER LEE' then 'Christopher Lee' else A.Student_Name
		end,
		Case 
		when A.Grade in ('Grade 10', 'ten','TEN') then 10 else A.Grade
		end as Grade,
		A.Mathematics_Mark,
		A.English_Mark,
		A.Afrikaans_Mark,
		Cast(Replace(A.Physical_Sciences_Mark, '%', '') as decimal (5,2)),
		A.Life_Sciences_Mark,
		Cast(Replace(A.History_Mark, '%', '') as decimal (5,2)),
		Cast(Replace(A.Geography_Mark, '%','')as decimal (5,2)),
		(Cast (A.Mathematics_Mark as decimal (5,2))+
		Cast(A.English_Mark as decimal (5,2))+
		Cast(A.Afrikaans_Mark as decimal (5,2))+
		Cast(Replace(A.Physical_Sciences_Mark, '%', '') as decimal (5,2))+
		Cast(A.Life_Sciences_Mark as decimal (5,2))+
		Cast(Replace(A.History_Mark, '%', '') as decimal (5,2))+
		Cast(Replace(A.Geography_Mark, '%','')as decimal (5,2))
		) /7 as Average_Mark,
		Case 
		when Overall_Result = 'P' then 'Pass' else Overall_Result
		end as Overall_Result
from [Starlight_Academy_STG].[bronze].[starlight_academy_marks_grd10] A
where LOWER(LTRIM(RTRIM(A.Grade))) IN ('10', 'grade 10', 'ten')
		AND NOT EXISTS (select 1
						from silver.starlight_academy_marks_grd10 B
						where A.Student_ID = B.Student_ID 
						)
go

select * from silver.starlight_academy_marks_grd10

if not exists (select 1 from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where s.name ='silver' and t.name = 'starlight_academy_marks_grd11')

Begin
Create Table silver.starlight_academy_marks_grd11
(
		Student_ID Nvarchar (255),
		Student_name Nvarchar (255),
		Grade Nvarchar (255),
		Mathematics_Mark int,
		English_Mark int,
		Afrikaans_Mark int,
		Physical_Sciences_Mark int,
		Life_Sciences_Mark int,
		History_Mark int,
		Geography_Mark int,
		Average_Mark decimal (5,2),
		Overall_Result Nvarchar (255)
)
end
go

Insert into silver.starlight_academy_marks_grd11
Select
		A.Student_ID,
		Case
		when A.Student_Name = 'ruby robinson' then 'Ruby Robinson' 
		else A.Student_Name 
		end,
		A.Grade,
		A.Mathematics_Mark,
		A.English_Mark,
		A.Afrikaans_Mark,
		A.Physical_Sciences_Mark,
		Cast(Replace(A.Life_Sciences_Mark,'%', '') as decimal (5,2)),
		Cast(A.History_Mark as decimal (5,2)),
		Cast(Replace(A.Geography_Mark,'%', '') as decimal (5,2)),
		(Cast (A.Mathematics_Mark as decimal (5,2))+
		Cast(A.English_Mark as decimal (5,2))+
		Cast(A.Afrikaans_Mark as decimal (5,2))+
		Cast(A.Physical_Sciences_Mark as decimal (5,2))+
		Cast(Replace(A.Life_Sciences_Mark,'%', '') as decimal (5,2))+
		Cast(A.History_Mark as decimal (5,2))+
		Cast(Replace(A.Geography_Mark,'%', '')as decimal (5,2))
		) /7 as Average_Mark,
		Overall_Result
from [Starlight_Academy_STG].[bronze].[starlight_academy_marks_grd11] A
where A.Grade = '11'
		AND NOT EXISTS (select 1
						from silver.starlight_academy_marks_grd11 B
						where A.Student_ID = B.Student_ID 
						)
go

Truncate Table silver.starlight_academy_marks_grd11

if not exists (select 1 from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where s.name ='silver' and t.name = 'starlight_academy_marks_grd12')

Begin
Create Table silver.starlight_academy_marks_grd12
(
		Student_ID Nvarchar (255),
		Student_name Nvarchar (255),
		Grade Nvarchar (255),
		Mathematics_Mark int,
		English_Mark int,
		Afrikaans_Mark int,
		Physical_Sciences_Mark int,
		Life_Sciences_Mark int,
		History_Mark int,
		Geography_Mark int,
		Average_Mark decimal (5,2),
		Overall_Result Nvarchar (255)
)
end
go

Insert into silver.starlight_academy_marks_grd12
Select
		Case 
		when A.Student_ID ='ID-012' then 12 
		when A.Student_ID ='STU-21' then 21
		when A.Student_ID = '00089' then 89
		else Student_ID 
		End,
		Case
		When A.Student_Name = 'SAMANTHA MOORE' then 'Samantha Moore' 
		else Student_Name
		end,
		Case
		when A.Grade in ('Grade 12', '12th') then 12
		else A.Grade
		end,
		Cast(Replace(A.Mathematics_Mark,'%', '') as decimal (5,2)),
		Cast(Replace(Replace(A.English_Mark,'%', ''), ',', '.')  as decimal (5,2)),
		Cast(A.Afrikaans_Mark as decimal (5,2)),
		A.Physical_Sciences_Mark,
		Cast(A.Life_Sciences_Mark as decimal (5,2)),
		A.History_Mark,
		A.Geography_Mark,
		(
		Cast(Replace(A.Mathematics_Mark,'%', '') as decimal (5,2))+
		Cast(Replace(Replace(A.English_Mark,'%', ''), ',', '.')  as decimal (5,2))+
		Cast(A.Afrikaans_Mark as decimal (5,2))+
		Cast(A.Physical_Sciences_Mark as decimal (5,2))+
		Cast(A.Life_Sciences_Mark as decimal (5,2))+
		Cast(A.History_Mark as decimal (5,2))+
		Cast(A.Geography_Mark as decimal (5,2))
		)*1.0 /7 as Average_Mark,
		Case
		when A.Overall_Result ='passed' then 'Pass'
		else A.Overall_Result
		end
from [Starlight_Academy_STG].[Bronze].[starlight_academy_marks_grd12] A
where LOWER(LTRIM(RTRIM(A.Grade))) IN ('12', 'grade 12', '12th') 
		AND NOT EXISTS (select 1
						from silver.starlight_academy_marks_grd12 B
						where A.Student_ID = B.Student_ID 
						)
go

Select * from [Silver].[starlight_academy_marks_grd8]
Select * from [Silver].[starlight_academy_marks_grd9]
Select * from [Silver].[starlight_academy_marks_grd10]
Select * from [Silver].[starlight_academy_marks_grd11]
Select * from [Silver].[starlight_academy_marks_grd12]