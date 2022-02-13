CREATE FUNCTION MES(@estado CHAR(2), @sexo CHAR)
RETURNS REAL AS
BEGIN
DECLARE @media REAL
SET @media = (
SELECT AVG(pontuacao)
FROM Cliente
WHERE sexo = @sexo and estado = @estado)
RETURN @media
END