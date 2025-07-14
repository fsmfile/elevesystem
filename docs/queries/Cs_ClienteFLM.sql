SELECT Last(tbl_cad_ClientesFLM.NomeDropBox) AS ÚltimoDeNomeDropBox
FROM tbl_cad_ClientesFLM RIGHT JOIN tbl_ConfigBasica ON tbl_cad_ClientesFLM.CodCliente_FLM = tbl_ConfigBasica.cod_ClienteFLM;
