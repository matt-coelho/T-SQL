CREATE PROCEDURE sp_Cursor_AvisarDesativarCliente @uf AS VARCHAR(2)
AS
DECLARE @codigoCli INT, @nomeCliente VARCHAR(30), @estado CHAR(2), @situacao AS CHAR, @i INT
SET @i = 0
DECLARE cr_AvisarCliente CURSOR
FOR SELECT codigoCli, nome, estado, situacao
FROM Cliente WHERE estado = @uf
OPEN cr_AvisarCliente
FETCH NEXT FROM cr_AvisarCliente
INTO @codigoCli, @nomeCliente, @estado, @situacao
WHILE(@@FETCH_STATUS = 0)
	BEGIN
	SET @i = @i + 1
	IF(@situacao = 'A')
	BEGIN
		PRINT 'Posicao atual: '+ CAST(@i AS VARCHAR)
		PRINT 'Código: '+ CAST(@codigoCli AS VARCHAR)
		PRINT 'Nome do Cliente' + @nomeCliente+',estado :'+@estado+', situacao: '+@situacao
		PRINT '<DESATIVAR CLIENTE>'
	END
	ELSE
	BEGIN
		PRINT 'Posicao atual: '+ CAST(@i AS VARCHAR)
		PRINT 'Código: '+ CAST(@codigoCli AS VARCHAR)
		PRINT 'Nome do Cliente' + @nomeCliente+',estado :'+@estado+', situacao: '+@situacao
	END
	FETCH NEXT FROM cr_AvisarCliente INTO @codigoCli, @nomeCliente, @estado, @situacao
END
CLOSE cr_AvisarCliente
DEALLOCATE cr_AvisarCliente