SELECT tbl_rot_vendasDetalhadas.Cod_venda, tbl_cad_prodserv.Tempo_atendServ_prodServ
FROM (tbl_rot_vendasDetalhadas LEFT JOIN tbl_cad_prodserv ON tbl_rot_vendasDetalhadas.Cod_produto = tbl_cad_prodserv.Cod_ProdServ) RIGHT JOIN tbl_detalhesOrdemServico ON tbl_rot_vendasDetalhadas.Cod_VendasDet = tbl_detalhesOrdemServico.Cod_VendasDet;
