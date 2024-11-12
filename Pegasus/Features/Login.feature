Feature: Login de Usuário

  Scenario: Usuário faz login com sucesso
    Given que estou na página de login
    When eu preencho o campo "E-mail" com "meuemail@mail.com"
    And eu preencho o campo "Senha" com "••••••••••••••"
    And eu seleciono a opção "Manter conectado"
    And eu clico no botão "Entrar"
    Then eu sou autenticado e vejo a página inicial

  Scenario: Usuário esqueceu a senha
    Given que estou na página de login
    When eu clico no link "Esqueceu sua senha?"
    Then eu sou redirecionado para a página de recuperação de senha

  Scenario: Usuário não tem conta e quer se cadastrar
    Given que estou na página de login
    When eu clico no link "Cadastre-se"
    Then eu sou redirecionado para a página de cadastro
