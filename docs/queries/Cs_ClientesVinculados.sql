SELECT tbl_cad_clientes.NomeRazaoSocial_Cliente, tbl_cad_clientes.TipoDocumento, tbl_cad_clientes.CPF_CNPJ_Cliente, tbl_cad_clientes.Vinculo_cliente, tbl_cad_clientes.Cod_cliente
FROM tbl_cad_clientes
WHERE (((tbl_cad_clientes.Ativo_Cliente)=Yes));
