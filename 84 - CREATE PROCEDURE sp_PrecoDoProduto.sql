CREATE PROCEDURE sp_PrecoDoProduto (@codigoProduto int, @codigoErro AS int = -1)
AS
BEGIN
	SET @codigoErro = -1
	SET NOCOUNT ON
		IF(@codigoProduto > (SELECT COUNT(codigoPro) from Produto))
			RETURN @codigoErro
		ELSE
			SET @codigoErro = 1
			RETURN @codigoErro
END