SELECT Cs_DetalhesFormaPagamento.Cod_formasPagamento AS [Forma de Pagamento], Sum(Cs_DetalhesFormaPagamento.Valor_FormaPagVendasDet) AS Total, DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda])) AS DataFiltro
FROM Cs_DetalhesFormaPagamento
GROUP BY Cs_DetalhesFormaPagamento.Cod_formasPagamento, DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda]))
HAVING (((DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda])))=[Formulários]![Frm_Cs_TotalPorFormaPag]![txtDataFiltro]));
