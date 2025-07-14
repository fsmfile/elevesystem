SELECT tbl_rot_vendas.Cod_venda, Sum(Nz([Valor_FormaPagVendasDet],0)) AS Total
FROM tbl_rot_vendas LEFT JOIN tbl_cad_formasPagamentoVENDASDET ON tbl_rot_vendas.Cod_venda = tbl_cad_formasPagamentoVENDASDET.Cod_Venda
GROUP BY tbl_rot_vendas.Cod_venda, tbl_rot_vendas.VendaFinalizada_vendas, tbl_rot_vendas.Cod_formaRetiradaEstoque
HAVING (((Sum(Nz([Valor_FormaPagVendasDet],0)))=0) AND ((tbl_rot_vendas.VendaFinalizada_vendas)=No) AND ((tbl_rot_vendas.Cod_formaRetiradaEstoque)=1))
ORDER BY tbl_rot_vendas.Cod_venda DESC;
