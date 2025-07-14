SELECT DateSerial(Year([dtMovimento_LancCaixa]),Month([dtMovimento_LancCaixa]),Day([dtMovimento_LancCaixa])) AS Dt_Hr_vend, Sum(0) AS [Valor Entrada], Sum(tbl_rot_LancCaixa.Valor_LancCaixa) AS [Valor Saída], "Despesa" AS Tipo
FROM tbl_rot_LancCaixa INNER JOIN TMP_Planocontas ON tbl_rot_LancCaixa.PlanoConta_LancCaixa = TMP_Planocontas.codAut_PlanoContas
GROUP BY DateSerial(Year([dtMovimento_LancCaixa]),Month([dtMovimento_LancCaixa]),Day([dtMovimento_LancCaixa])), "Despesa", tbl_rot_LancCaixa.Tipo_LancCaixa, TMP_Planocontas.Ativo_PlanoContas
HAVING (((tbl_rot_LancCaixa.Tipo_LancCaixa)="Débito") AND ((TMP_Planocontas.Ativo_PlanoContas)=Yes));
