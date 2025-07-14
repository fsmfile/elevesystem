SELECT cs_ComissaoPorComissionista.[Total de Venda do Dia], cs_ComissaoPorComissionista.Nome_funcionario, cs_ComissaoPorComissionista.Grupo_comissionista, cs_ComissaoPorComissionista.[Valor a Ser pago]
FROM cs_ComissaoPorComissionista
WHERE (((cs_ComissaoPorComissionista.[Total de Venda do Dia]) Between [Formulários]![frm_cs_ComissaoPorComissionistadata]![txtDtInicial] And [Formulários]![frm_cs_ComissaoPorComissionistadata]![txtdtFinal]));
