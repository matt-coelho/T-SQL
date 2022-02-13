CREATE FUNCTION QProdutos (@codF INT)
RETURNS @linhas TABLE (quantidade INT, nome VARCHAR(25))
AS
BEGIN
	INSERT @linhas (quantidade, nome)
	SELECT p.quantidade, f.nome FROM Produto AS p
	INNER JOIN Fornecedor AS f ON f.codigoForn = p.codigoForn
	WHERE p.codigoForn = @codF
	RETURN
END