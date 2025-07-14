SELECT tbl_rot_ContasReceber_det.cod_ContasReceberDET, Sum(Nz([ValorPagoPagCli_CR],0)) AS ValorPago, Sum(Nz([JurosPagCli_CR],0)) AS Juros, Nz([DescontoPagCli_CR],0) AS Desconto, Nz(Sum(([ValorPagoPagCli_CR]+[JurosPagCli_CR])-[DescontoPagCli_CR]),0) AS TotalValorPago, tbl_rot_PagCli_contasReceber.DataPag_ContasReceberDET
FROM tbl_rot_ContasReceber_det LEFT JOIN tbl_rot_PagCli_contasReceber ON tbl_rot_ContasReceber_det.cod_ContasReceberDET = tbl_rot_PagCli_contasReceber.codContasReceberDET
GROUP BY tbl_rot_ContasReceber_det.cod_ContasReceberDET, Nz([DescontoPagCli_CR],0), tbl_rot_PagCli_contasReceber.DataPag_ContasReceberDET
HAVING (((tbl_rot_PagCli_contasReceber.DataPag_ContasReceberDET)=Date()));
