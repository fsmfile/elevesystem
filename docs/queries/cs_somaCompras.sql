SELECT tbl_cad_prodserv.Cod_ProdServ, Sum(Cs_ComprasEstoque.QtdComprada) AS SomaDeQtdComprada
FROM Cs_ComprasEstoque RIGHT JOIN tbl_cad_prodserv ON Cs_ComprasEstoque.Cod_ProdServ = tbl_cad_prodserv.Cod_ProdServ
GROUP BY tbl_cad_prodserv.Cod_ProdServ;
