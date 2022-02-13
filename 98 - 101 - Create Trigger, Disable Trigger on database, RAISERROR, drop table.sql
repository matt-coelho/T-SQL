
CREATE TABLE Teste (codigo INTEGER NOT NULL IDENTITY,					descricao VARCHAR(30), PRIMARY KEY(codigo))
CREATE TRIGGER trgSegurancaDropTable ON DATABASE FOR Drop_Table AS
ROLLBACK
RAISERROR('>>>SEGURAN�A: TRIGGER DE SEGURAN�A! ********** ',16,1)
drop table Teste -- aqui o trigger bloqueia
DISABLE TRIGGER trgSegurancaDropTable ON DATABASE
drop table Teste -- aqui funciona