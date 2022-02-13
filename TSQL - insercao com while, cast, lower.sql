DECLARE @cont INT, @nome VARCHAR(250), @sexo CHAR

SET @cont = 0
SET @nome = 'Chris'
SET @sexo = 'F'

WHILE (@cont < 10)
	BEGIN
		insert into usuario (usuario, email, sexo, senha) VALUES (@nome, LOWER(@nome) +CAST(@cont as varchar)+ '.mail@mail.com', @sexo, 123456)
		SET @cont = @cont + 1
	END

select * from usuario