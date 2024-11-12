Feature: Administração de dados em planilhas
  Como Administrador do sistema
  Eu quero poder manipular dados nas planilhas
  Para que eu possa gerenciar e organizar as informações conforme necessário.

  Scenario: Edição de dados de planilha pelo Administrador
    Given que eu sou um Administrador autenticado no sistema
    And que uma planilha autogerenciada já está carregada no sistema
    When eu seleciono uma célula específica na planilha
    And altero o valor da célula
    Then o sistema deve atualizar o valor da célula na planilha
    And salvar automaticamente as alterações realizadas
    And eu devo receber uma confirmação de que a edição foi bem-sucedida

  Scenario: Exclusão de dados de planilha pelo Administrador
    Given que eu sou um Administrador autenticado no sistema
    And que uma planilha autogerenciada já está carregada no sistema
    When eu seleciono uma linha específica de dados na planilha
    And eu escolho a opção de excluir a linha
    Then o sistema deve remover a linha selecionada da planilha
    And salvar automaticamente a alteração
    And eu devo receber uma confirmação de que a exclusão foi realizada com sucesso