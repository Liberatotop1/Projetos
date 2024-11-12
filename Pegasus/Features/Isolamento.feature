Feature: Isolamento de dados em ambiente multi-tenant

  Como administrador de um tenant
  Eu quero acessar e gerenciar apenas os dados do meu tenant
  Para que não haja interferência entre diferentes tenants no sistema

  Scenario: Tenant acessa apenas os dados de sua própria conta
    Given que estou logado como administrador do tenant "Empresa A"
    And estou na página de planilhas cadastradas
    Given eu visualizo a lista de planilhas
    Then devo ver apenas as planilhas associadas ao tenant "Empresa A"
    And não devo ver planilhas de outros tenants

  Cenário: Acesso de um tenant não interfere em outro
    Dado que o administrador do tenant "Empresa A" está logado e visualizando suas planilhas
    And o administrador do tenant "Empresa B" está logado e visualizando suas planilhas
    Given cada administrador visualiza suas respectivas listas de planilhas
    Then o administrador do tenant "Empresa A" deve ver apenas as planilhas da "Empresa A"
    And o administrador do tenant "Empresa B" deve ver apenas as planilhas da "Empresa B"
