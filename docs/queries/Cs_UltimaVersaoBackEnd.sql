SELECT Max(tbl_VersaoBackEnd.Versaobackend) AS ÚltimodeVersaoBackend, Last(tbl_VersaoBackEnd.AtualizacaoCritica) AS ÚltimoDeAtualizacaoCritica
FROM tbl_VersaoBackEnd;
