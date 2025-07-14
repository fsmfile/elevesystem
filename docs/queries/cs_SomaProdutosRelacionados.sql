SELECT tbl_cad_prodserv.Cod_ProdServ, Sum(IIf([Quantidade_ProdutoDet]*[valor_produtodet],[Quantidade_ProdutoDet]*[valor_produtodet],0)) AS TotalProdServ
FROM tbl_cad_prodserv LEFT JOIN tbl_cad_produtoDetalhado ON tbl_cad_prodserv.Cod_ProdServ = tbl_cad_produtoDetalhado.ProdRelacionado_produtoDet
GROUP BY tbl_cad_prodserv.Cod_ProdServ;
