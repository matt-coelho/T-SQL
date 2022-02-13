CREATE VIEW View_Cliente_Pedido as SELECT cli.codigoCli as 'CODIGO CLIENTE',cli.nome as 'NOME CLIENTE', ped.numeroPed
from Cliente as cli 
INNER JOIN Pedido as ped ON cli.codigoCli = ped.codigoCli