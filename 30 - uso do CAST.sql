
select codigoCli as 'C�digo do Cliente',
(nome + SPACE(5) + sobrenome) as 'Nome Completo',
'Pontuacao: '+CAST(pontuacao as varchar) from Cliente where codigoCli >= 10 ORDER BY nome
