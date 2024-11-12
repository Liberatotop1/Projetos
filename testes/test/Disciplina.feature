Feature: Visualizar Disciplinas do Aluno
  Como aluno,
  Quero visualizar a aba de disciplinas
  Para verificar as disciplinas que estou matriculado

  Scenario: Exibir lista de disciplinas do aluno
    Given que o aluno está logado no sistema
    And que o aluno acessa a página inicial
    When o aluno clica na aba "Disciplinas"
    Then o sistema exibe a lista de disciplinas nas quais o aluno está matriculado
    And cada disciplina deve mostrar o nome e professor responsável

  Scenario: Nenhuma disciplina matriculada
    Given que o aluno está logado no sistema
    And que o aluno acessa a página inicial
    And o aluno não possui disciplinas matriculadas
    When o aluno clica na aba "Disciplinas"
    Then o sistema exibe uma mensagem informando "Nenhuma disciplina matriculada"

  Scenario: Ver detalhes de uma disciplina
    Given que o aluno está logado no sistema
    And que o aluno acessa a aba "Disciplinas"
    And o aluno visualiza a lista de disciplinas
    When o aluno clica em uma disciplina específica
    Then o sistema exibe os detalhes da disciplina, incluindo descrição e horário das aulas
