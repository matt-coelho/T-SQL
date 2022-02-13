CREATE TRIGGER trg_AtualizaValorPedido_AI
ON ItemPedido AFTER INSERT AS
DECLARE @quantidade AS INT, @valor AS DECIMAL, @desconto AS DECIMAL, @numeroPed AS INT, @valorTotal AS DECIMAL
SELECT @numeroPed = numeroPed, @quantidade = quantidade, @valor = valor FROM INSERTED
SET @valorTotal = (@quantidade * @valor) - @desconto
UPDATE Pedido SET valorTotal = @valorTotal
WHERE numeroPed = @numeroPed