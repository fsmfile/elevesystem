SELECT tbl_cad_compras.DtEmissao_compras, [subgrupo_prodserv] & " " & [Nome_prodserv] AS NomeProd, [Quantidade_comprasdet]*[Valorunitario_comprasdet] AS TotalCompras
FROM tbl_cad_compras INNER JOIN (Tbl_cad_comprasDetalhadas INNER JOIN tbl_cad_prodserv ON Tbl_cad_comprasDetalhadas.Cod_ProdServ = tbl_cad_prodserv.Cod_ProdServ) ON tbl_cad_compras.cod_compras = Tbl_cad_comprasDetalhadas.Cod_compras;
