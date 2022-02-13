CREATE FUNCTION SUMPED (@codigoCli INT)
RETURNS MONEY AS
BEGIN
	DECLARE @somaPedido MONEY
	SET @somaPedido = (
	SELECT SUM(valorTotal) FROM Pedido WHERE codigoCli = @codigoCli)
	RETURN @somaPedido
END