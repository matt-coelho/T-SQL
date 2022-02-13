DECLARE @sigla varchar(10), @descricao varchar(35)
SET @sigla = 'KN'
SET @descricao = 'Kilonewton'
INSERT INTO Unidade(sigla,descricao) values(@sigla, @descricao)
GO
SELECT sigla, descricao FROM Unidade WHERE sigla = 'KN'