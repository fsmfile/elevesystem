SELECT tbl_ProdServ_promDET.*, tbl_Prodserv_Promocao.grupo_Promocao, tbl_Prodserv_Promocao.Porcentagem_promocao, tbl_Prodserv_Promocao.QtdVenda_promocao, tbl_Prodserv_Promocao.Ativo_promocao
FROM tbl_Prodserv_Promocao LEFT JOIN tbl_ProdServ_promDET ON tbl_Prodserv_Promocao.CodPromocao = tbl_ProdServ_promDET.CodPromocao
WHERE (((tbl_Prodserv_Promocao.Ativo_promocao)=Yes));
