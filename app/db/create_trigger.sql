USE [SJSONExam]
GO
/****** Object:  Trigger [SJSON_schema].[INSERT_COLLABO]    Script Date: 2016-11-21 오후 9:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [SJSON_schema].[INSERT_COLLABO] 
ON [SJSON_schema].[COLLABORATERS]
FOR INSERT
AS 
declare @diary_index varchar(20)
Select @diary_index = diary_index From inserted  
UPDATE SJSON_schema.WRITE_ORDER
SET COLLABO_NUM = COLLABO_NUM+1
WHERE @diary_index = DIARY_INDEX;