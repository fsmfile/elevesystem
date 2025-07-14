SELECT fncNumerarConsulta(Null) AS Seq, A.TblPrimaria, A.Comando1, A.NomeRelac, A.Comando2, A.FK, A.Comando3, A.TblEstrangeira, A.PK, A.Comando4, A.Versaobe, A.CodAlt
FROM tbl_CriarRelacbe AS A LEFT JOIN tbl_VersaoBackEnd AS AA ON A.VersaoBe = AA.Versaobackend
WHERE (((Nz([Versaobackend],0))=0) AND ((1)=0));


UNION ALL SELECT fncNumerarConsulta([TblPrimaria]) AS Seq, B.TblPrimaria, B.Comando1, B.NomeRelac, B.Comando2, B.FK, B.Comando3, B.TblEstrangeira, B.PK, B.Comando4, B.Versaobe, B.CodAlt
FROM tbl_CriarRelacbe AS B LEFT JOIN tbl_VersaoBackEnd AS BB ON B.VersaoBe = BB.Versaobackend
WHERE (((Nz([Versaobackend],0))=0));
