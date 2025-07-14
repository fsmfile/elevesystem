SELECT tbl_rot_LancCaixa.PlanoConta_LancCaixa, Sum(tbl_rot_LancCaixa.Valor_LancCaixa) AS [Total em Valor], tbl_rot_LancCaixa.DtMovimento_LancCaixa
FROM tbl_rot_LancCaixa
GROUP BY tbl_rot_LancCaixa.PlanoConta_LancCaixa, tbl_rot_LancCaixa.DtMovimento_LancCaixa
HAVING (((tbl_rot_LancCaixa.DtMovimento_LancCaixa) Between [Formulários]![frm_LancCaixa_TotalPorPlanodeContas]![txtDtInicial] And [Formulários]![frm_LancCaixa_TotalPorPlanodeContas]![txtdtFinal]));
