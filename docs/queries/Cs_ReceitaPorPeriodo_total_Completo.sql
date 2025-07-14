SELECT tbl_data.Data, Nz([SomaDeValor Entrada],0) AS Entrada, Nz([Valor Saída],0) AS ValorSaída, "Receita" AS Tipo
FROM tbl_data LEFT JOIN Cs_ReceitaPorPeriodo_Total ON tbl_data.Data = Cs_ReceitaPorPeriodo_Total.Dt_Hr_vend;
