SELECT tbl_rot_vendas.Cod_venda, Sum(Nz([Valor_FormaPagVendasDet],0)) AS TotalFaturado
FROM tbl_cad_formasPagamentoVENDASDET RIGHT JOIN tbl_rot_vendas ON tbl_cad_formasPagamentoVENDASDET.Cod_Venda = tbl_rot_vendas.Cod_venda
GROUP BY tbl_rot_vendas.Cod_venda, tbl_rot_vendas.Cod_formaRetiradaEstoque, tbl_rot_vendas.VendaFinalizada_vendas
HAVING (((tbl_rot_vendas.Cod_formaRetiradaEstoque)=1) AND ((tbl_rot_vendas.VendaFinalizada_vendas)=Yes));
