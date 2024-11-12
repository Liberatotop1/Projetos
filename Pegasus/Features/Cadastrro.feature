Feature: Cadastro de Usuário

  Scenario: Usuário cadastra-se com sucesso
    Given que estou na página de cadastro
    When eu preencho o campo "Nome Completo" com "Ysaac Miqueias Candido Liberato"
    And eu preencho o campo "E-mail" com "meuemail@mail.com"
    And eu preencho o campo "Senha" com "••••••••••••••"
    And eu preencho o campo "Confirmar Senha" com "••••••••••••••"
    And eu clico no botão "Criar"
    Then eu vejo a mensagem "Cadastro realizado com sucesso!"
    And o cadastro é realizado com sucesso
