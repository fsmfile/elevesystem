SELECT Cs_ReceitaPorPeriodo.Dt_Hr_vend, Sum(Cs_ReceitaPorPeriodo.[Valor Entrada]) AS [SomaDeValor Entrada], Cs_ReceitaPorPeriodo.[Valor Saída], Cs_ReceitaPorPeriodo.Tipo
FROM Cs_ReceitaPorPeriodo
GROUP BY Cs_ReceitaPorPeriodo.Dt_Hr_vend, Cs_ReceitaPorPeriodo.[Valor Saída], Cs_ReceitaPorPeriodo.Tipo;
