CREATE TRIGGER trg_estoqueMaxMin_AU
ON Produto AFTER UPDATE AS
DECLARE @quantidadeAntiga AS INT, @quantidadeNova AS INT, @diferenca AS INT, @maximo AS INT, @minimo AS INT
IF UPDATE(quantidade)
	BEGIN
	SELECT @maximo = maximo FROM DELETED
	SELECT @minimo = minimo FROM DELETED
	
	SELECT @quantidadeAntiga = quantidade FROM DELETED
	SELECT @quantidadeNova = quantidade FROM INSERTED
	
	IF @quantidadeNova > @maximo
		BEGIN
		SET @diferenca = @quantidadeAntiga - @quantidadeNova
		PRINT 'a diferenca, anterior e nova quantidade '+CAST(@diferenca AS VARCHAR)
		RAISERROR('A quantidade MÍNIMA ou MÁXIMA do estoque FOI alcaçada, Verifique!',16,1)
		END
	END