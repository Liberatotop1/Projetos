Feature: Alimentar planilha e salvamento autogerenciada
  Como usuário do sistema
  Eu quero que o sistema leia dados em múltiplos formatos e salve em uma planilha autogerenciada
  Para que eu possa consolidar as informações em um único arquivo.

  Scenario: Importar dados em múltiplos formatos e salvar em planilha autogerenciada
    Given que o sistema está configurado para aceitar múltiplos formatos de arquivo (ex: CSV, JSON, XML)
    And que eu tenho arquivos de dados nos formatos suportados
    When eu realizo a importação dos arquivos
    Then o sistema deve ler os dados de cada arquivo
    And consolidá-los em uma única planilha autogerenciada
    And a planilha deve ser salva automaticamente
    And eu devo poder visualizar todos os dados importados na planilha