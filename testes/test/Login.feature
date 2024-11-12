Feature: Relatório de Login no Sistema
  Como usuário, quero acessar o sistema.

  Scenario: Login com credenciais válidas
    Given que o usuário está na página de login
    When o usuário insere o nome de usuário "usuario teste" e senha "senha123"
    Then o usuário é redirecionado para a página inicial

  Scenario: Login com senha inválida
    Given que o usuário está na página de login
    When o usuário insere o nome de usuário "usuario teste" e senha "senha invalida"
    Then uma mensagem de erro "Senha incorreta" é exibida