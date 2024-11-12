Feature: Visualização e gerenciamento de planilhas no painel administrativo

  Como administrador do sistema
  Eu quero ver todas as planilhas cadastradas no painel
  Para que eu possa gerenciar cada uma delas

  Scenario: Visualizar e gerenciar todas as planilhas cadastradas
    Given que estou logado como administrador
    And estou na página do painel administrativo
    When eu acesso a seção de planilhas cadastradas
    Then eu devo ver uma lista de todas as planilhas cadastradas
    And cada planilha deve ter opções para gerenciar
      | Opções       |
      | Editar       |
      | Excluir      |
      | Visualizar   |

    And as opções devem estar habilitadas para interação


Scenario: Usuário comum tenta acessar planilhas cadastradas
    Given que estou logado como usuário comum
    When tento acessar a seção de planilhas cadastradas no painel
    Then eu não devo conseguir visualizar nenhuma planilha
    And devo ver uma mensagem de erro "Acesso negado"