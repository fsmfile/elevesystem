TRANSFORM Sum(tbl_cad_formasPagamentoVENDASDET.Valor_FormaPagVendasDet) AS SomaDeValor_FormaPagVendasDet
SELECT [NomeRazaoSocial_Cliente] & " " & [telefone_cliente] AS Cliente
FROM (((tbl_rot_vendas LEFT JOIN tbl_cad_formasPagamentoVENDASDET ON tbl_rot_vendas.Cod_venda = tbl_cad_formasPagamentoVENDASDET.Cod_Venda) LEFT JOIN tbl_cad_clientes ON tbl_rot_vendas.Cod_cliente = tbl_cad_clientes.Cod_cliente) LEFT JOIN tbl_cad_Metas ON tbl_rot_vendas.Dt_Hr_venda = tbl_cad_Metas.Data_Metas) LEFT JOIN tbl_cad_formasPagamento ON tbl_cad_formasPagamentoVENDASDET.Cod_formasPagamento = tbl_cad_formasPagamento.Cod_formasPagamento
WHERE (((tbl_rot_vendas.Cod_formaRetiradaEstoque)=1) AND ((tbl_rot_vendas.VendaFinalizada_vendas)=Yes))
GROUP BY Month([Dt_Hr_venda]) & "/" & Year([Dt_Hr_venda]), [NomeRazaoSocial_Cliente] & " " & [telefone_cliente], tbl_rot_vendas.Cod_formaRetiradaEstoque, tbl_rot_vendas.VendaFinalizada_vendas
ORDER BY Month([Dt_Hr_venda]) & "/" & Year([Dt_Hr_venda]) DESC 
PIVOT tbl_cad_formasPagamento.Nome_FormaPagamento;
