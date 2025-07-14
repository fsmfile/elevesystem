SELECT DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda])) AS [Total de Venda do Dia], Cs_comissao.Nome_funcionario, Cs_comissao.Grupo_comissionista, Sum(Cs_comissao.Totalcomissaogrupo) AS [Valor a Ser pago]
FROM Cs_comissao
GROUP BY DateSerial(Year([Dt_Hr_venda]),Month([Dt_Hr_venda]),Day([Dt_Hr_venda])), Cs_comissao.Nome_funcionario, Cs_comissao.Grupo_comissionista;
