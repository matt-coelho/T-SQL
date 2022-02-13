DECLARE @pontuacao INT, @nome VARCHAR(20), @dataAtual DATE
SET @pontuacao = 10
SET @dataAtual = GETDATE()
SET @nome = 'Matheus C'

PRINT CAST(@pontuacao as varchar) +SPACE(3)+ CAST(@dataAtual as varchar) +SPACE(3)+ @nome

SELECT @pontuacao as 'pontuacao', @nome as 'nome', @dataAtual as 'data'