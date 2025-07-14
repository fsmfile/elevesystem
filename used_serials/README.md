# Sistema de Controle de Serial Único

Esta pasta contém os arquivos de controle para garantir que cada serial seja usado apenas uma vez no instalador do Eleve System.

## Como Funciona

1. **Verificação antes da instalação**: Antes de iniciar a instalação, o sistema verifica se existe um arquivo JSON com o nome do serial nesta pasta
2. **Instalação permitida**: Se o arquivo não existir, a instalação prossegue normalmente
3. **Marcação como usado**: Após uma instalação bem-sucedida, um arquivo JSON é criado com o nome do serial
4. **Bloqueio de reuso**: Se alguém tentar usar o mesmo serial novamente, o sistema detectará o arquivo existente e bloqueará a instalação

## Estrutura dos Arquivos

Cada arquivo de serial usado contém:
- `serial`: O serial que foi utilizado
- `data_uso`: Data e hora em que o serial foi usado
- `usado_por`: Identificação de quem/onde foi usado

## Exemplo de Arquivo

```json
{
  "serial": "CLIENTE001",
  "data_uso": "2024-01-15T14:30:00.123456",
  "usado_por": "instalador_oficial"
}
```

## Benefícios

- ✅ Previne uso duplicado de seriais
- ✅ Controla distribuição de licenças
- ✅ Rastreabilidade de uso
- ✅ Implementação simples e confiável

## Funcionamento Online/Offline

- **Online**: Os arquivos são criados no GitHub automaticamente
- **Offline**: Os arquivos são salvos localmente e podem ser enviados posteriormente
- **Verificação**: Sempre verifica primeiro no GitHub, depois localmente 