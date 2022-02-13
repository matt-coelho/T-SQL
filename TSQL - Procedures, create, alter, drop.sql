-- procedure e como uma view, mas que ao inves de representar uma tabela e um procedimento que pode ser determinado e realizado quando chamado
CREATE PROCEDURE Cliente10 AS --pode ser alterrada, basta trocar CREATE por ALTER
SELECT * FROM Cliente WHERE codigoCli = 10
--chamada
EXEC Cliente10
GO
--drop procedure
DROP PROCEDURE Cliente10