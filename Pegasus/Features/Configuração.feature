Feature: Configuração e execução de eventos automatizados
  Como Administrador do sistema
  Eu quero configurar eventos que manipulem informações da planilha e enviem mensagens automaticamente
  Para automatizar ações e notificações com base nos dados.

  Scenario: Configuração de evento para manipulação de dados e envio de mensagens
    Given que eu sou um Administrador autenticado no sistema
    And que a planilha autogerenciada está carregada e com dados disponíveis
    When eu configuro um evento com uma regra específica (ex: "Atualizar dados semanalmente")
    And eu defino que o evento deve enviar uma mensagem ao Administrador ao final da execução
    Then o sistema deve salvar as configurações do evento
    And o evento deve ser executado conforme a configuração estabelecida
    And uma mensagem deve ser enviada ao Administrador conforme configurado

  Scenario: Execução automática de evento e notificação de alterações
    Given que um evento configurado para manipulação de dados já está agendado
    And o evento deve ser executado em um horário determinado (ex: "toda segunda-feira às 9h")
    When o horário programado é atingido
    Then o sistema deve executar o evento automaticamente
    And as informações na planilha devem ser atualizadas conforme a configuração do evento
    And o sistema deve enviar uma mensagem de notificação com os detalhes das alterações ao Administrador