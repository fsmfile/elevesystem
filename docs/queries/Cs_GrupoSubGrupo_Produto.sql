SELECT tbl_cad_grupo_prodserv.cod_tipo_prodServ, tbl_cad_prodserv.Nome_prodServ, tbl_cad_grupo_prodserv.Grupo_prodServ, tbl_cad_grupo_prodserv.Subgrupo_prodServ
FROM tbl_cad_grupo_prodserv LEFT JOIN tbl_cad_prodserv ON tbl_cad_grupo_prodserv.Grupo_prodServ = tbl_cad_prodserv.Grupo_prodServ;
