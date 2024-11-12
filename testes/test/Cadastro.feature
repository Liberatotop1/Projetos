Feature: Cadastro de Usuário
  Como usuário, quero me cadastrar no sistema para acessar funcionalidades exclusivas.

  Scenario: Cadastro bem-sucedido
    Given que o usuário está na página de cadastro
    When o usuário preenche o campo "Nome" com "João Silva"
      And o usuário preenche o campo "Campus" com "Conceição"
      And o usuário preenche o campo "E-mail" com "joao.silva@uscsonline.com.br"
      And o usuário preenche o campo "Senha" com "senhaSegura123"
      And o usuário confirma a senha com "senhaSegura123"
      And o usuário clica no botão "Cadastrar"
    Then o sistema exibe a mensagem "Cadastro realizado com sucesso"
      And o usuário é redirecionado para a página inicial

  Scenario: Falha no cadastro por falta de informações obrigatórias
    Given que o usuário está na página de cadastro
    When o usuário preenche o campo "Nome" com "Ana Souza"
      And o usuário preenche o campo "Campus" com "Conceição"
      And o usuário deixa o campo "E-mail" vazio
      And o usuário preenche o campo "Senha" com "senhaForte456"
      And o usuário confirma a senha com "senhaForte456"
      And o usuário clica no botão "Cadastrar"
    Then o sistema exibe a mensagem de erro "E-mail é obrigatório"
      And o usuário permanece na página de cadastro

  Scenario: Falha no cadastro por e-mail duplicado
    Given que o usuário está na página de cadastro
      And já existe um cadastro com o e-mail "maria.silva@uscsonline.com.br"
    When o usuário preenche o campo "Nome" com "Maria Silva"
      And o usuário preenche o campo "E-mail" com "maria.silva@uscsonline.com.br"
      And o usuário preenche o campo "Campus" com "Centro"
      And o usuário preenche o campo "Senha" com "outraSenha789"
      And o usuário confirma a senha com "outraSenha789"
      And o usuário clica no botão "Cadastrar" 
    Then o sistema exibe a mensagem de erro "E-mail já cadastrado"
      And o usuário permanece na página de cadastro