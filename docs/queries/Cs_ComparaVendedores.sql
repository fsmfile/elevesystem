SELECT IIf(IsNull([Nome_funcionario]),"Outros",[Nome_funcionario]) AS Vendedor, Sum([quantidade_vendasdet]*[valor_unitario_vendasdet]) AS ValorTotalVendas, DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda])) AS Data
FROM (tbl_cad_funcionarios RIGHT JOIN (tbl_rot_vendas LEFT JOIN tbl_cad_comissionista ON tbl_rot_vendas.Cod_comissionista_G1 = tbl_cad_comissionista.Mat_funcionario) ON tbl_cad_funcionarios.mat_funcionario = tbl_cad_comissionista.Mat_funcionario) LEFT JOIN tbl_rot_vendasDetalhadas ON tbl_rot_vendas.Cod_venda = tbl_rot_vendasDetalhadas.Cod_venda
GROUP BY IIf(IsNull([Nome_funcionario]),"Outros",[Nome_funcionario]), DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda]))
HAVING (((DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda]))) Between [Formulários]![frm_comparaVendedores]![txtDtInicial] And [Formulários]![frm_comparaVendedores]![txtdtFinal]))
ORDER BY Sum([quantidade_vendasdet]*[valor_unitario_vendasdet]) DESC;
