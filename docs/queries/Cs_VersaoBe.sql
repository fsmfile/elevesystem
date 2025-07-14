SELECT fncNumerarConsulta(Null) AS Seq, A.Tabela, A.Comando, A.Valor, A.TipoValor, A.VersaoBe, A.ContagemVersao
FROM tbl_altBe AS A LEFT JOIN tbl_VersaoBackEnd AS AA ON A.VersaoBe = AA.Versaobackend
WHERE (((Nz([Versaobackend],0))=0) AND ((1)=0))
ORDER BY A.Tabela;

UNION ALL SELECT fncNumerarConsulta([TABELA]) AS Seq, B.Tabela, B.Comando, B.Valor, B.TipoValor, B.VersaoBe, B.ContagemVersao
FROM tbl_altBe AS B LEFT JOIN tbl_VersaoBackEnd AS BB ON B.VersaoBe = BB.Versaobackend
WHERE (((Nz([Versaobackend],0))=0));
