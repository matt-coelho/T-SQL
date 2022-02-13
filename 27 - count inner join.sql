
select f.nome, count(*) as TOTAL from Fornecedor as f Inner Join Produto as p on f.codigoForn = p.codigoForn group by f.nome