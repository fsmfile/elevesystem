SELECT tbl_cad_prodserv.Cod_ProdServ, tbl_Prodserv_Promocao.grupo_Promocao, Sum(tbl_Prodserv_Promocao.Porcentagem_promocao) AS SomaDePorcentagem_promocao, tbl_Prodserv_Promocao.QtdVenda_promocao
FROM tbl_cad_prodserv LEFT JOIN (tbl_Prodserv_Promocao RIGHT JOIN tbl_ProdServ_promDET ON tbl_Prodserv_Promocao.CodPromocao = tbl_ProdServ_promDET.CodPromocao) ON tbl_cad_prodserv.Cod_ProdServ = tbl_ProdServ_promDET.CodProdServ
GROUP BY tbl_cad_prodserv.Cod_ProdServ, tbl_Prodserv_Promocao.grupo_Promocao, tbl_Prodserv_Promocao.QtdVenda_promocao, tbl_Prodserv_Promocao.Ativo_promocao
HAVING (((Sum(tbl_Prodserv_Promocao.Porcentagem_promocao))>0) AND ((tbl_Prodserv_Promocao.Ativo_promocao)=Yes));
