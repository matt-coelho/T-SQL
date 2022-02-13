DECLARE @media float
SET @media = (SELECT AVG(pontuacao) FROM Cliente)
print 'Média '+CAST(@media as varchar)
print 'RESULTADOS'
print '------------'
print 'A média geral para a carteira de clientes é 7'
if(@media > 7)
begin
	print '************'
	print 'Carteira de cliente Aprovada'
	print '************'
end
else
begin
	print '************'
	print 'Carteira de cliente Reprovada'
	print '************'
end