DECLARE @codigo int
exec @codigo = sp_PrecoDoProduto 90000
print cast(@codigo as varchar)