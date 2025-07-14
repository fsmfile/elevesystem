SELECT fncNumerarConsulta(null) AS Seq, A.Nometabela, A.VersaoBe
FROM tbl_Criartbl AS A LEFT JOIN tbl_VersaoBackEnd AS AA ON A.VersaoBe = AA.Versaobackend
WHERE (((Nz([Versaobackend],0))=0)) and 1=0;

UNION ALL SELECT fncNumerarConsulta([NOMETABELA]) AS Seq, B.Nometabela, B.VersaoBe
FROM tbl_Criartbl AS B LEFT JOIN tbl_VersaoBackEnd AS BB ON B.VersaoBe = BB.Versaobackend
WHERE (((Nz([Versaobackend],0))=0));
