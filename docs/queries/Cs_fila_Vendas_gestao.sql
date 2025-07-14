SELECT tbl_rot_vendas.Cod_venda, tbl_rot_vendas.Dt_Hr_venda, tbl_rot_vendas.Cod_cliente, tbl_rot_vendas.Grupo_vendas, tbl_rot_vendas.VendaFinalizada_vendas
FROM tbl_rot_vendas
WHERE (((tbl_rot_vendas.Grupo_vendas)=2) AND ((tbl_rot_vendas.VendaFinalizada_vendas)=No));
