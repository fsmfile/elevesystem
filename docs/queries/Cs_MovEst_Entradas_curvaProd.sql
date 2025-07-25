SELECT tbl_cad_prodserv.Cod_ProdServ, Count(Cs_MovEstoque_Ent.CodProd_PME_ENTRADA) AS ContarDeCodProd_PME_ENTRADA, IIf(IsNull([codprod_pme_entrada]),"",DateSerial(Year([dtHrRetiradaEst]),Month([dtHrRetiradaEst]),Day([dtHrRetiradaEst]))) AS DataMovEnt
FROM tbl_cad_prodserv LEFT JOIN Cs_MovEstoque_Ent ON tbl_cad_prodserv.Cod_ProdServ = Cs_MovEstoque_Ent.CodProd_PME_ENTRADA
GROUP BY tbl_cad_prodserv.Cod_ProdServ, IIf(IsNull([codprod_pme_entrada]),"",DateSerial(Year([dtHrRetiradaEst]),Month([dtHrRetiradaEst]),Day([dtHrRetiradaEst])));
