SELECT tbl_caixa.codCaixa, DateSerial(Year([dtcaixa]),Month([dtcaixa]),Day([dtcaixa])) AS DataCaixa, tbl_caixa.Cod_caixa AS MatFunc, tbl_caixa.valor_caixa, tbl_caixa.usuariologado AS Justificativa, tbl_caixa.SessaoCaixa
FROM tbl_caixa
WHERE (((DateSerial(Year([dtcaixa]),Month([dtcaixa]),Day([dtcaixa])))=Date()) And ((tbl_caixa.Cod_caixa)=Formulários!frm_saldocaixa_individual!MatFunc))
ORDER BY tbl_caixa.SessaoCaixa;
