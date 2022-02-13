select vendas.cliente, SUM (vendas.total) as total FROM
(select cl.nome as cliente, (ip.valor*ip.quantidade) AS Total FROM Cliente AS cl
INNER JOIN Pedido as pe ON cl.codigoCli = pe.codigoCli
INNER JOIN ItemPedido as ip ON pe.numeroPed = ip.numeroPed) as vendas
GROUP BY vendas.cliente