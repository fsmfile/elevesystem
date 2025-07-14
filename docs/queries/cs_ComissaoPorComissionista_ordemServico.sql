SELECT DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda])) AS [Total de Venda do Dia], Cs_comissao_OrdemServico.Nome_funcionario, Cs_comissao_OrdemServico.Grupo_comissionista, Sum(Cs_comissao_OrdemServico.Totalcomissaogrupo) AS [Valor a Ser pago]
FROM Cs_comissao_OrdemServico
GROUP BY DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda])), Cs_comissao_OrdemServico.Nome_funcionario, Cs_comissao_OrdemServico.Grupo_comissionista
HAVING (((DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda]))) Between [Formulários]![frm_cs_ComissaoPorComissionistadata]![txtDtInicial] And [Formulários]![frm_cs_ComissaoPorComissionistadata]![txtdtFinal]));
