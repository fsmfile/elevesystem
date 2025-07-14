SELECT Cs_TodosLancCaixa.Cod AS Expr1, Cs_TodosLancCaixa.DtMovimento_LancCaixa AS Expr2, Cs_TodosLancCaixa.Descricao_LancCaixa AS Expr3, Cs_TodosLancCaixa.ValorCredito AS Expr4, Cs_TodosLancCaixa.ValorDebito AS Expr5, Nz(DSum("[valorCredito]-[valorDebito]","cs_todoslanccaixa","cod <=" & [cod]),[valorCredito]-[valorDebito]) AS saldo
FROM Cs_TodosLancCaixa
ORDER BY Cs_TodosLancCaixa.Cod;
