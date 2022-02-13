DECLARE @observacao varchar(50), @numeroPedido int
SET @numeroPedido = 10
SET @observacao = (SELECT obs FROM Pedido WHERE numeroPed = @numeroPedido)
PRINT 'Cliente: '+ CAST(@numeroPedido AS VARCHAR) + ' observacao: '+@observacao