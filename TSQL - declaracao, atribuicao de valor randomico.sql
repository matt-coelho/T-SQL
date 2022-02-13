DECLARE @rand INT
SET @rand = (SELECT 20 * RAND())
PRINT @rand