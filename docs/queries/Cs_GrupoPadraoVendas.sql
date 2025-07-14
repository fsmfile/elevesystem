SELECT Last(tbl_cad_GrupoSistema.cod_grupoUsuario) AS cod
FROM tbl_cad_GrupoSistema
GROUP BY tbl_cad_GrupoSistema.PadraoVendas_grupoSistema
HAVING (((tbl_cad_GrupoSistema.PadraoVendas_grupoSistema)=Yes));
