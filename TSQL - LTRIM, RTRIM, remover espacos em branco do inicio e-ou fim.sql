---LTRIM remove os espacos em branco do inicio (esquerda, left) de uma string
DECLARE @myString VARCHAR(200)
SET @myString = SPACE(5)+'   test TRIM, delete spaces from the begining'
SELECT LTRIM(@myString)

---RTRIM remove os espacos em branco do final (direita, right) de uma string
DECLARE @myString2 VARCHAR(200)
SET @myString2 = 'test TRIM, delete spaces from the end '+SPACE(5)
SELECT RTRIM(@myString2)