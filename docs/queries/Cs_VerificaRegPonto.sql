SELECT tbl_regponto.MatFuncionario_regPonto, Date()=DateSerial(Year([DtHr_regPonto]),Month([DtHr_regPonto]),Day([DtHr_regPonto])) AS TesteHoje, *
FROM tbl_regponto
WHERE (((tbl_regponto.MatFuncionario_regPonto)=Formulários!Frm_LoginSistema!MatFunc) And ((Date()=DateSerial(Year([DtHr_regPonto]),Month([DtHr_regPonto]),Day([DtHr_regPonto])))=True));
