SELECT tbl_rot_LancCaixa.Cod_LancCaixa, tbl_rot_LancCaixa.Tipo_LancCaixa, tbl_rot_LancCaixa.DtMovimento_LancCaixa, tbl_rot_LancCaixa.PlanoConta_LancCaixa, tbl_rot_LancCaixa.Descricao_LancCaixa, IIf(IsNull([tbl_rot_LancCaixa]![Valor_LancCaixa])=-1,0,[tbl_rot_LancCaixa]![Valor_LancCaixa]) AS ValorCredito
FROM tbl_rot_LancCaixa AS tbl_rot_LancCaixa_1 LEFT JOIN tbl_rot_LancCaixa ON tbl_rot_LancCaixa_1.Cod_LancCaixa = tbl_rot_LancCaixa.Cod_LancCaixa
WHERE (((tbl_rot_LancCaixa.Tipo_LancCaixa)="Crédito"));
