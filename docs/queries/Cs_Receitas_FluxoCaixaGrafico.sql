TRANSFORM Sum(Cs_ReceitaPorPeriodo_filtro.[Valor Entrada]) AS [SomaDeValor Entrada]
SELECT Cs_ReceitaPorPeriodo_filtro.Origem
FROM Cs_ReceitaPorPeriodo_filtro INNER JOIN TMP_formasPagamento ON Cs_ReceitaPorPeriodo_filtro.[Forma de Pagamento] = TMP_formasPagamento.Nome_FormaPagamento
WHERE (((TMP_formasPagamento.Permitido_FormaPagamento)=Yes))
GROUP BY Cs_ReceitaPorPeriodo_filtro.Origem, TMP_formasPagamento.Permitido_FormaPagamento
PIVOT Month([Dt_Hr_vend]);
