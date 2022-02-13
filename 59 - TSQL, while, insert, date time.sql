DECLARE @contador int
SET @contador = 0
DECLARE @inicio datetime
SET @inicio = GETDATE()
WHILE(@contador < 1500000)
BEGIN
	INSERT INTO MaterialGeral (descricao, quantidade, valor) values ('descricao', 10, 20)
	SET @contador = @contador +1
END
DECLARE @tempoF datetime
SET @tempoF = GETDATE()
print '--------------------------'
print 'Tempo inicial'
print CAST(@inicio as varchar)
print '--------------------------'
print 'Tempo final'
print CAST(@tempoF as varchar)
print '--------------------------'