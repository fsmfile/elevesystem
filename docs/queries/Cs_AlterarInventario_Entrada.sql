INSERT INTO Tbl_cad_comprasDetalhadas ( Cod_ProdServ, Quantidade_ComprasDet, Cod_compras )
SELECT Cs_AlterarInventario.CodProd, Cs_AlterarInventario.Calculo, [xxx] AS CodCompras
FROM Cs_AlterarInventario
WHERE (((Cs_AlterarInventario.[Nova Contagem])=Yes) AND ((Cs_AlterarInventario.Calculo)>0));
