CREATE TRIGGER trg_limiteUnidades_AU ON Produto AFTER UPDATE AS
DECLARE @quantiaMovimentada AS INT, @quantidadeAnterior AS INT, @quantidadeNova AS INT
SELECT @quantidadeAnterior = quantidade FROM DELETED
SELECT @quantidadeNova = quantidade FROM INSERTED
SET @quantiaMovimentada = @quantidadeAnterior - @quantidadeNova
IF @quantiaMovimentada > 10
	BEGIN
	PRINT 'A QUANTIDADE VENDIDA EXCEDE O LIMITE DE 10 UNIDADES. VENDA CANCELADA!'
	ROLLBACK
	END