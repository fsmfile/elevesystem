INSERT INTO tbl_RegFinanceiro ( CodOrigem_regFinanc, Origem_regFinanc, DtHrCadastro_regFinanc, DtMovimentacao_regFinanc, Lancamento_regFinanc, Historico_regFinanc, Usuario_regFinanc, Valor_regFinanc )
SELECT tbl_rot_LancCaixa.Cod_LancCaixa, "Lanç. de Caixa" AS Origem, tbl_rot_LancCaixa.dthrCadastro_lancCaixa, tbl_rot_LancCaixa.DtMovimento_LancCaixa, tbl_cad_Planocontas.Nome_PlanoContas, tbl_rot_LancCaixa.Descricao_LancCaixa, tbl_rot_LancCaixa.usuariologado_lanccaixa, IIf([tipo_lancCaixa]="Crédito",[Valor_LancCaixa],[Valor_LancCaixa]*(-1)) AS Valor
FROM tbl_rot_LancCaixa LEFT JOIN tbl_cad_Planocontas ON tbl_rot_LancCaixa.PlanoConta_LancCaixa = tbl_cad_Planocontas.codAut_PlanoContas
WHERE (((tbl_rot_LancCaixa.Tipo_LancCaixa)="crédito"));
