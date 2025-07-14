SELECT Cs_Estoque.Cod_ProdServ, tbl_cad_prodserv.SubGrupo_prodserv, tbl_cad_prodserv.Nome_prodServ, Cs_Estoque.[Total em estoque], tbl_cad_prodserv.EstoqueMinimo_prodServ
FROM Cs_Estoque INNER JOIN tbl_cad_prodserv ON Cs_Estoque.Cod_ProdServ = tbl_cad_prodserv.Cod_ProdServ
WHERE ((([total em estoque]-[estoqueminimo_prodserv])<=0))
ORDER BY [total em estoque]-[estoqueminimo_prodserv];
