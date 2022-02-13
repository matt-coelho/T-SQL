CREATE TRIGGER trgSegurancaDropTable ON DATABASE FOR Drop_Table AS
ROLLBACK
RAISERROR('>>>SEGURAN�A: TRIGGER DE SEGURAN�A! ********** ',16,1)
--------------------------------------
sp_helptext trgSegurancaDropTable
drop trigger trgSegurancaDropTable
alter table --nome tabela -- disable trigger trgSegurancaDropTable

select * from sys.triggers where is_disabled = 0
--mostra o estado de todas as triggers
