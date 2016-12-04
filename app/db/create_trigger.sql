CREATE TRIGGER INSERT_COLLABO
ON COLLABORATERS
FOR INSERT
AS 
declare @diary_index varchar(20)
select @diary_index = diary_index from inserted
UPDATE SJSON_schema.WRITE_ORDER
SET COLLABO_NUM = COLLABO_NUM+1
WHERE @diary_index = DIARY_INDEX;

----------------------------------------------------------
CREATE TRIGGER INSERT_PAPERS
ON PAPERS
FOR INSERT
AS 
declare @diary_index varchar(20)
select @diary_index = diary_index from inserted
UPDATE SJSON_schema.WRITE_ORDER
SET CURRENT_NUM = 
case when current_num+1 > collabo_num then 1
else current_num+1
end
WHERE @diary_index = DIARY_INDEX;

