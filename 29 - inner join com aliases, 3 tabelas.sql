select ped.numeroPed as Pedido, i.valor ValorPed, pro.descricao as DESCRICAO from Pedido as ped 
INNER JOIN ItemPedido as i ON ped.numeroPed = i.numeroPed
INNER JOIN Produto as pro ON pro.codigoPro = i.numeroPed
ORDER BY ped.numeroPed