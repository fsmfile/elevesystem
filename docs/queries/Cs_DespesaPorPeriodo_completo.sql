SELECT tbl_data.Data, Nz([Valor Entrada],0) AS ValorEntrada, Nz([Valor Saída],0) AS ValorSaída, "Despesa" AS Tipo
FROM tbl_data LEFT JOIN Cs_DespesaPorPeriodo ON tbl_data.Data = Cs_DespesaPorPeriodo.Dt_Hr_vend;
