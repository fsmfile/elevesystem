SELECT tbl_caixa.codCaixa, DateSerial(Year([dtcaixa]),Month([dtcaixa]),Day([dtcaixa])) AS DataCaixa
FROM tbl_caixa
WHERE (((DateSerial(Year([dtcaixa]),Month([dtcaixa]),Day([dtcaixa])))=Date()))
ORDER BY tbl_caixa.codCaixa;
