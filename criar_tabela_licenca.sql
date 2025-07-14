-- ============================================================================
-- SCRIPT PARA CRIAR E CONFIGURAR TABELA DE LICENÇA LOCAL
-- Execute este script no backend (FLMSistemas_be.accdb)
-- ============================================================================

-- 1. DELETAR TABELA SE EXISTIR (para recriar limpa)
DROP TABLE tblLicencaLocal;

-- 2. CRIAR TABELA tblLicencaLocal
CREATE TABLE tblLicencaLocal (
    ID AUTOINCREMENT PRIMARY KEY,
    ClienteID TEXT(50) NOT NULL,
    HardwareID TEXT(100),
    UltimaDataOk DATETIME,
    DataInicioCarencia DATETIME,
    DiasCarenciaUtilizados INTEGER DEFAULT 0,
    LicencaValida YESNO DEFAULT False,
    DataCriacao DATETIME DEFAULT Now()
);

-- 3. INSERIR REGISTRO PARA LPPNEUS
INSERT INTO tblLicencaLocal (ClienteID, HardwareID, LicencaValida)
VALUES ('LPPNEUS', 'HW_' & Format(Now(), 'yyyymmddhhnnss'), False);

-- 4. VERIFICAR SE FOI CRIADO CORRETAMENTE
SELECT * FROM tblLicencaLocal;

-- ============================================================================
-- COMANDOS ALTERNATIVOS SE HOUVER ERRO DE SINTAXE
-- ============================================================================

-- Se o comando acima não funcionar, use estes comandos individuais:

-- Comando 1: Criar tabela
-- CREATE TABLE tblLicencaLocal (
--     ID COUNTER PRIMARY KEY,
--     ClienteID TEXT(50) NOT NULL,
--     HardwareID TEXT(100),
--     UltimaDataOk DATETIME,
--     DataInicioCarencia DATETIME,
--     DiasCarenciaUtilizados LONG DEFAULT 0,
--     LicencaValida YESNO DEFAULT No
-- );

-- Comando 2: Inserir LPPNEUS
-- INSERT INTO tblLicencaLocal (ClienteID, HardwareID)
-- VALUES ('LPPNEUS', 'HW_20250714001');

-- ============================================================================
-- TESTE: VERIFICAR SE O SISTEMA ENCONTRA O CLIENTE
-- ============================================================================

-- Este SELECT deve retornar 'LPPNEUS' (mesmo comando que o VBA usa)
SELECT ClienteID, HardwareID, UltimaDataOk, DataInicioCarencia, DiasCarenciaUtilizados 
FROM tblLicencaLocal 
WHERE ClienteID = 'LPPNEUS'; 