SELECT tbl_cad_ClientesFLM.CodCliente_FLM, tbl_cad_ClientesFLM.NomeDropBox, tbl_cad_ClientesFLM.NomeAmigavel
FROM tbl_cad_ClientesFLM LEFT JOIN TMP_ConfigBE ON tbl_cad_ClientesFLM.CodCliente_FLM = TMP_ConfigBE.CodCliente_FLM
WHERE (((tbl_cad_ClientesFLM.CodCliente_FLM) Is Null));
