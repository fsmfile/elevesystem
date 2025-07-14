SELECT cst_LancCaixa_Credito.Valorcredito AS ValorCredito, cst_LancCaixa_Debito.Valordebito AS ValorDebito, tbl_rot_LancCaixa.Descricao_LancCaixa, tbl_rot_LancCaixa.PlanoConta_LancCaixa, tbl_rot_LancCaixa.DtMovimento_LancCaixa
FROM (cst_LancCaixa_Credito RIGHT JOIN tbl_rot_LancCaixa ON cst_LancCaixa_Credito.Cod_LancCaixa = tbl_rot_LancCaixa.Cod_LancCaixa) LEFT JOIN cst_LancCaixa_Debito ON tbl_rot_LancCaixa.Cod_LancCaixa = cst_LancCaixa_Debito.Cod_LancCaixa
WHERE (((tbl_rot_LancCaixa.DtMovimento_LancCaixa)=[Formulários]![frm_TotalPorVendaPorPeriodo]![Data]));
