-- DECLARA VARIAVEL MEDIA
DECLARE @media FLOAT
-- CALCULA MEDIA
SET @media = (SELECT AVG(pontuacao) FROM Cliente)

-- APRESENTA A MEDIA
SELECT @media AS 'Media das Pontuações'

--MOSTRA O RESULTADO
SELECT (nome + ' -=> Pontuacao: '+CAST(pontuacao as varchar)) as 'Clientes com crédito Aprovado' FROM Cliente WHERE pontuacao > @media