SELECT tbl_rot_ContasReceber_det.cod_ContasReceberDET, Sum(Nz([ValorPagoPagCli_CR],0)) AS ValorPago, Sum(Nz([JurosPagCli_CR],0)) AS Juros, Sum(Nz([DescontoPagCli_CR],0)) AS Desconto, Sum(Nz((([ValorPagoPagCli_CR]+[JurosPagCli_CR])-[DescontoPagCli_CR]),0)) AS TotalValorPago
FROM tbl_rot_ContasReceber_det LEFT JOIN tbl_rot_PagCli_contasReceber ON tbl_rot_ContasReceber_det.cod_ContasReceberDET = tbl_rot_PagCli_contasReceber.codContasReceberDET
GROUP BY tbl_rot_ContasReceber_det.cod_ContasReceberDET;
