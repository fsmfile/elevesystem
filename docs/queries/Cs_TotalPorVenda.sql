SELECT tbl_rot_vendas.Cod_venda, DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda])) AS [Data da Venda], Sum([Quantidade_VendasDet]*[valor_unitario_vendasdet]) AS Totalporvenda
FROM tbl_rot_vendas INNER JOIN tbl_rot_vendasDetalhadas ON tbl_rot_vendas.Cod_venda = tbl_rot_vendasDetalhadas.Cod_venda
GROUP BY tbl_rot_vendas.Cod_venda, DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda])), tbl_rot_vendas.VendaFinalizada_vendas, tbl_rot_vendas.Cod_formaRetiradaEstoque
HAVING (((tbl_rot_vendas.VendaFinalizada_vendas)=Yes) AND ((tbl_rot_vendas.Cod_formaRetiradaEstoque)=1));
