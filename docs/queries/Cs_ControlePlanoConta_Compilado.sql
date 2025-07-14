SELECT tbl_cad_Planocontas.Nome_PlanoContas, Sum(Nz([Valor3],0)) AS Valor_3, Sum(Nz([Valor4],0)) AS Valor_4
FROM (tbl_cad_Planocontas LEFT JOIN Cs_ControlePlanoConta4 ON tbl_cad_Planocontas.codAut_PlanoContas = Cs_ControlePlanoConta4.codAut_PlanoContas) LEFT JOIN Cs_ControlePlanoConta3 ON tbl_cad_Planocontas.codAut_PlanoContas = Cs_ControlePlanoConta3.codAut_PlanoContas
GROUP BY tbl_cad_Planocontas.Nome_PlanoContas;
