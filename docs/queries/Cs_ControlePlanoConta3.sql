SELECT tbl_cad_Planocontas.codAut_PlanoContas, tbl_cad_Planocontas.Nome_PlanoContas, Sum(Nz([Valor_LancCaixa],0)) AS Valor3
FROM tbl_rot_LancCaixa LEFT JOIN tbl_cad_Planocontas ON tbl_rot_LancCaixa.PlanoConta_LancCaixa = tbl_cad_Planocontas.codAut_PlanoContas
GROUP BY tbl_cad_Planocontas.codAut_PlanoContas, tbl_cad_Planocontas.Nome_PlanoContas
HAVING (((tbl_cad_Planocontas.Nome_PlanoContas)=[Formulários]![frm_ControlePlanoConta]![CxPC2]));
