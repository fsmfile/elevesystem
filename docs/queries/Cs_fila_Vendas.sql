SELECT tbl_rot_vendas.Cod_venda, tbl_rot_vendas.Dt_Hr_venda, tbl_cad_clientes.NomeRazaoSocial_Cliente, tbl_cad_clientes.Apelido_cliente, tbl_rot_vendas.Grupo_vendas, tbl_rot_vendas.VendaFinalizada_vendas
FROM tbl_rot_vendas LEFT JOIN tbl_cad_clientes ON tbl_rot_vendas.Cod_cliente = tbl_cad_clientes.Cod_cliente
WHERE (((tbl_rot_vendas.Grupo_vendas)=4) AND ((tbl_rot_vendas.VendaFinalizada_vendas)=No));
