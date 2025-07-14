SELECT [subgrupo_prodserv] & " " & [nome_prodserv] AS NomeProdServ, [precocusto_prodserv]+([Precocusto_prodserv]*[margemminima_prodserv]) AS ValorMinimo
FROM tbl_cad_prodserv, tbl_rot_vendas INNER JOIN tbl_rot_vendasDetalhadas ON tbl_rot_vendas.Cod_venda = tbl_rot_vendasDetalhadas.Cod_venda
GROUP BY [subgrupo_prodserv] & " " & [nome_prodserv], [precocusto_prodserv]+([Precocusto_prodserv]*[margemminima_prodserv])
HAVING ((([precocusto_prodserv]+([Precocusto_prodserv]*[margemminima_prodserv]))>0));
