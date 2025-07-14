SELECT tbl_cad_prodserv.Cod_ProdServ, Count(Cs_MovEstoque.CodProd_PME_SAIDA) AS ContarDeCodProd_PME_SAIDA
FROM tbl_cad_prodserv LEFT JOIN Cs_MovEstoque ON tbl_cad_prodserv.Cod_ProdServ = Cs_MovEstoque.CodProd_PME_SAIDA
GROUP BY tbl_cad_prodserv.Cod_ProdServ;
