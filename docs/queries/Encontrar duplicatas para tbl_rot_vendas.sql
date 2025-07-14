SELECT tbl_rot_vendas.Cod_venda, tbl_rot_vendas.ID_Externo_Vendas
FROM tbl_rot_vendas
WHERE (((tbl_rot_vendas.Cod_venda) In (SELECT [Cod_venda] FROM [tbl_rot_vendas] As Tmp GROUP BY [Cod_venda] HAVING Count(*)>1 )))
ORDER BY tbl_rot_vendas.Cod_venda;
