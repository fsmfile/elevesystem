DELETE tbl_rot_vendasDetalhadas.*, tbl_rot_vendas.Cod_venda, tbl_rot_vendasDetalhadas.Cod_VendasDet
FROM tbl_rot_vendas RIGHT JOIN tbl_rot_vendasDetalhadas ON tbl_rot_vendas.[Cod_venda] = tbl_rot_vendasDetalhadas.[Cod_venda]
WHERE (((tbl_rot_vendas.Cod_venda) Is Null));
