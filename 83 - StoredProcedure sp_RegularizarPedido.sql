CREATE PROCEDURE sp_regularizarPedido (@np INT) AS
BEGIN
	DECLARE @valorTotalPedidos AS DECIMAL
	SET @valorTotalPedidos = (SELECT SUM(valor * quantidade - desconto) FROM ItemPedido WHERE numeroPed = @np)
	UPDATE Pedido SET valorTotal = @valorTotalPedidos WHERE numeroPed = @np
END