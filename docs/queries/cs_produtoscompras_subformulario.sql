SELECT Tbl_cad_comprasDetalhadas.Cod_compras AS [Cód Compras], Tbl_cad_comprasDetalhadas.Cod_ProdServ AS CódProd, [subgrupo_prodserv] & " " & [nome_prodserv] AS Produto, Tbl_cad_comprasDetalhadas.Quantidade_ComprasDet
FROM Tbl_cad_comprasDetalhadas LEFT JOIN tbl_cad_prodserv ON Tbl_cad_comprasDetalhadas.Cod_ProdServ = tbl_cad_prodserv.Cod_ProdServ;
