SELECT tbl_cad_formHiperlink.Cod_CadForm AS Tela, tbl_processos.Nome_processo, tbl_processosDetalhados.Procedimento, tbl_processosDetalhados.Descricao
FROM tbl_cad_formHiperlink RIGHT JOIN (tbl_processos LEFT JOIN tbl_processosDetalhados ON tbl_processos.cod_processos = tbl_processosDetalhados.[Proc Rel]) ON tbl_cad_formHiperlink.Cod_CadForm = tbl_processosDetalhados.Cod_FormRel;
