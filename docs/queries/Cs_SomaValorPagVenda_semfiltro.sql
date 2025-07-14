SELECT tbl_rot_vendasDetalhadas.Cod_venda, Sum([quantidade_vendasdet]*[Valor_unitario_vendasDet]) AS Soma
FROM tbl_rot_vendasDetalhadas
GROUP BY tbl_rot_vendasDetalhadas.Cod_venda;
