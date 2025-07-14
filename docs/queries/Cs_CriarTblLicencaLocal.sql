-- Consulta para criar/atualizar tabela de licença local
-- Executar esta consulta para garantir que a tabela tenha todos os campos necessários

-- Verifica se a tabela existe e cria se necessário
CREATE TABLE IF NOT EXISTS tblLicencaLocal (
    ClienteID TEXT(100),
    HardwareID TEXT(100),
    UltimaDataOk DATETIME,
    DataInicioCarencia DATETIME,
    DiasCarenciaUtilizados INTEGER,
    LicencaValida BIT
);

-- Adiciona campos se não existirem (para versões antigas)
ALTER TABLE tblLicencaLocal ADD COLUMN DataInicioCarencia DATETIME;
ALTER TABLE tblLicencaLocal ADD COLUMN DiasCarenciaUtilizados INTEGER;
ALTER TABLE tblLicencaLocal ADD COLUMN LicencaValida BIT;

-- Insere registro padrão se a tabela estiver vazia
INSERT INTO tblLicencaLocal (ClienteID, HardwareID, UltimaDataOk, DataInicioCarencia, DiasCarenciaUtilizados, LicencaValida)
SELECT 'DESCONHECIDO', 'HW_' & Format(Now(), 'yyyymmddhhnnss'), Now(), Null, 0, True
WHERE NOT EXISTS (SELECT 1 FROM tblLicencaLocal); 