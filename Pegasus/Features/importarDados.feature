Feature: Importação de dados
  Como um usuário do sistema
  Quero importar dados de arquivos .csv e .xlsx
  Para que os dados sejam salvos corretamente com os nomes das colunas e registros associados

  Scenario: Importar um arquivo .csv válido com cabeçalhos na primeira linha
    Given que o usuário está na página de importação de dados
    And um arquivo "dados.csv" válido com cabeçalhos na primeira linha e registros subsequentes
    When o usuário seleciona o arquivo "dados.csv" e inicia o processo de importação
    Then o sistema deve ler os cabeçalhos da primeira linha e salvar como nomes das colunas
    And o sistema deve salvar corretamente os dados de cada coluna
    And uma mensagem de sucesso "Dados importados com sucesso" deve ser exibida

  Scenario: Importar um arquivo .xlsx válido com cabeçalhos na primeira linha
    Given que o usuário está na página de importação de dados
    And um arquivo "dados.xlsx" válido com cabeçalhos na primeira linha e registros subsequentes
    When o usuário seleciona o arquivo "dados.xlsx" e inicia o processo de importação
    Then o sistema deve ler os cabeçalhos da primeira linha e salvar como nomes das colunas
    And o sistema deve salvar corretamente os dados de cada coluna
    And uma mensagem de sucesso "Dados importados com sucesso" deve ser exibida

  Scenario: Tentar importar um arquivo sem cabeçalhos
    Given que o usuário está na página de importação de dados
    And um arquivo "dados_sem_cabecalho.csv" sem cabeçalhos na primeira linha
    When o usuário seleciona o arquivo "dados_sem_cabecalho.csv" e inicia o processo de importação
    Then o sistema deve exibir uma mensagem de erro "Arquivo inválido: cabeçalhos de colunas ausentes"
    And nenhum dado deve ser salvo no sistema

  Scenario: Tentar importar um arquivo com dados inconsistentes
    Given que o usuário está na página de importação de dados
    And um arquivo "dados_inconsistentes.csv" com cabeçalhos na primeira linha e dados inconsistentes
    When o usuário seleciona o arquivo "dados_inconsistentes.csv" e inicia o processo de importação
    Then o sistema deve exibir uma mensagem de erro "Erro: dados inconsistentes no arquivo"
    And nenhum dado deve ser salvo no sistema