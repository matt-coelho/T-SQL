SELECT nped AS 'Numero do Pedido', COUNT(item) AS 'Total de Pedidos por Item' from 
	(SELECT ped.numeroPed AS nped, it.numeroItem AS item FROM 
	Pedido AS ped
	INNER JOIN
	ItemPedido AS it
	ON ped.numeroPed = it.numeroPed)
	AS sect GROUP BY sect.nped