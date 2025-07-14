SELECT tbl_cad_prodserv.Nome_prodServ, tbl_cad_prodserv.Cod_ProdServ
FROM tbl_cad_prodserv
WHERE (((tbl_cad_prodserv.Permissao_Venda_prodServ)=Yes) AND ((tbl_cad_prodserv.ProdutoAtivo_prodServ)=Yes));
