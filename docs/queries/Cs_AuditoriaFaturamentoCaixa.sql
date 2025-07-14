SELECT tbl_rot_vendas.Cod_venda, Cs_TotalPorVenda.TotalPorVenda, Cs_VendatotalFormaPagamento.TotalFaturado, IIf([TotalFaturado]<[totalporvenda],"Alerta","ok") AS FaturadoAbaixo, IIf([TotalFaturado]>[totalporvenda],"Alerta","ok") AS FaturadoAcima
FROM (tbl_rot_vendas LEFT JOIN Cs_TotalPorVenda ON tbl_rot_vendas.Cod_venda = Cs_TotalPorVenda.Cod_venda) LEFT JOIN Cs_VendatotalFormaPagamento ON tbl_rot_vendas.Cod_venda = Cs_VendatotalFormaPagamento.Cod_venda
WHERE (((tbl_rot_vendas.VendaFinalizada_vendas)=Yes) AND ((tbl_rot_vendas.Cod_formaRetiradaEstoque)=1));
