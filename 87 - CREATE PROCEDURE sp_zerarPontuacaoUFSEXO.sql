CREATE PROC sp_ZerarPontuacaoClienteUFSEXO
	(@uf AS CHAR(2), @sex AS CHAR(1)) AS
UPDATE Cliente SET pontuacao = 0
WHERE estado = @uf AND sexo = @sex
