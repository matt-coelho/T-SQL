DECLARE @contador INT, @soma INT
SET @contador = 1
SET @soma = 0

WHILE (@contador <= 10)
	BEGIN
		PRINT CAST(@contador as varchar)
		SET @contador = @contador + 1
	END