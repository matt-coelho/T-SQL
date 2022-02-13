CREATE PROCEDURE sp_Cursor_DadosClientes @uf as VARCHAR(2)
AS
DECLARE @codigoCli INT, @nomeCliente VARCHAR(30), @estado CHAR(2), @i INT
SET @i = 0
DECLARE cr_Cliente CURSOR
FOR SELECT codigoCli, nome, estado FROM Cliente WHERE
estado = @uf
OPEN cr_Cliente
FETCH NEXT FROM cr_Cliente
INTO @codigoCli, @nomeCliente, @estado
WHILE (@@FETCH_STATUS = 0)
BEGIN
	SET @i = @i +1
	PRINT 'Posicao atual: '+CAST(@i AS VARCHAR)
	PRINT 'Codigo: '+CAST(@codigoCli AS VARCHAR)
	PRINT 'Nome do Cliente: '+@nomeCliente+', estado: '+@estado
	PRINT ' '
	FETCH NEXT FROM cr_Cliente
	INTO @codigoCli, @nomeCliente, @estado
END
CLOSE cr_Cliente
DEALLOCATE cr_Cliente