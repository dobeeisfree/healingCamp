CREATE TRIGGER INIT_WRITEORDER
ON DIARIES
FOR INSERT
AS 
declare @diary_index varchar(20)
select @diary_index = diary_index from inserted
INSERT INTO SJSON_schema.WRITE_ORDER
VALUES (@diary_index, 1, 1);
