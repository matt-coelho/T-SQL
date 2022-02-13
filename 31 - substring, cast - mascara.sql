select nome as 'NOME CLIENTE', cpf as CPF, (SUBSTRING(CAST(cpf AS varchar),1,3)+'.'+
SUBSTRING(CAST(cpf as varchar),4,3)+'.'+
SUBSTRING(cast(cpf as varchar),7,3)+'-'+
SUBSTRING(cast(cpf as varchar),10,2)) as 'CPF C/ MASCARA' from Cliente