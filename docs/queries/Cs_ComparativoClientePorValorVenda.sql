SELECT Month([Dt_Hr_venda]) & "/" & Year([Dt_Hr_venda]) AS Data, [NomeRazaoSocial_Cliente] & " " & [telefone_cliente] AS Cliente, Sum(tbl_cad_formasPagamentoVENDASDET.Valor_FormaPagVendasDet) AS ValorTotal
FROM ((tbl_rot_vendas INNER JOIN tbl_cad_formasPagamentoVENDASDET ON tbl_rot_vendas.Cod_venda = tbl_cad_formasPagamentoVENDASDET.Cod_Venda) LEFT JOIN tbl_cad_clientes ON tbl_rot_vendas.Cod_cliente = tbl_cad_clientes.Cod_cliente) LEFT JOIN tbl_cad_Metas ON tbl_rot_vendas.Dt_Hr_venda = tbl_cad_Metas.Data_Metas
GROUP BY Month([Dt_Hr_venda]) & "/" & Year([Dt_Hr_venda]), [NomeRazaoSocial_Cliente] & " " & [telefone_cliente], tbl_rot_vendas.Cod_formaRetiradaEstoque, tbl_rot_vendas.VendaFinalizada_vendas
HAVING (((tbl_rot_vendas.Cod_formaRetiradaEstoque)=1) AND ((tbl_rot_vendas.VendaFinalizada_vendas)=Yes))
ORDER BY Month([Dt_Hr_venda]) & "/" & Year([Dt_Hr_venda]) DESC , Sum(tbl_cad_formasPagamentoVENDASDET.Valor_FormaPagVendasDet) DESC;
