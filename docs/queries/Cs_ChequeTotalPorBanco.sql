SELECT tbl_data.Data, tbl_cad_cheque.Valor_cheque, tbl_cad_cheque.Banco_cheque
FROM tbl_cad_cheque RIGHT JOIN tbl_data ON tbl_cad_cheque.Predatado_cheque = tbl_data.Data
GROUP BY tbl_data.Data, tbl_cad_cheque.Valor_cheque, tbl_cad_cheque.Banco_cheque;
