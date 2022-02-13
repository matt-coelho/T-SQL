CREATE PROC SP_AlteraSituacaoCliente
	(@cidade as varchar(27), @estado as char(2), @sexo as char(1)) AS
DECLARE @linhas AS INT
UPDATE Cliente SET situacao = 'I' WHERE estado = @estado
							AND sexo =@sexo
							AND cidade =@cidade
							SET @linhas = @@ROWCOUNT --o numero de linhas alteradas
PRINT '>> PROCEDIMENTO FINALIZADO:'
PRINT '>> QUANTIDADE DE LINHAS AFETADAS:'
SET NOCOUNT ON --exibe apenas o numero de linhas..
PRINT @linhas