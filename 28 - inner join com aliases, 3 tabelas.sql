select cl.nome as CLIENTE, co.nome as CONFERENTE,
pe.numeroPed as NUMERO,
pe.valorTotal as VALOR from Pedido as pe
INNER JOIN Conferente as co ON co.codigoConf = pe.codigoConf
INNER JOIN Cliente as cl ON cl.codigoCli = pe.codigoCli
ORDER BY cl.nome