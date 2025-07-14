SELECT tbl_cad_GrupoSistema.Grupo_grupoUsuario, tbl_cad_GrupoSistema.cod_grupoUsuario
FROM Cs_Resumo_HierarquiaGrupos_VENDAS LEFT JOIN tbl_cad_GrupoSistema ON Cs_Resumo_HierarquiaGrupos_VENDAS.Cod_GrupoSistemaABAIXO = tbl_cad_GrupoSistema.cod_grupoUsuario
WHERE (((tbl_cad_GrupoSistema.cod_grupoUsuario)=1 Or (tbl_cad_GrupoSistema.cod_grupoUsuario)=4 Or (tbl_cad_GrupoSistema.cod_grupoUsuario)=12));
