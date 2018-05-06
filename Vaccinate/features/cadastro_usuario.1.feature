Feature: Cadastro Novo Usuario
  Como um Visitante
  Eu quero me cadastrar no site
  Para que eu possa criar um calendário de vacinações
  
  Background: 
    Given Eu estou na home
    When Eu clico no botão cadastrar
    Then Eu sou direcionado para a página de cadastro

    
  Scenario: Cadastro de Visitante válida
    Given Eu estou na pagina de cadastro
    When Eu coloco Subets no campo Login
    And Eu coloco sub_13@gmail.com no campo Email
    And Eu coloco senhasecreta no campo Senha
    And Eu coloco senhasecreta no campo Confirmar Senha
    And Eu clico em Concluir Cadastro
    Then Eu devo ver o texto Cadastro concluido com sucesso!
  
  Scenario: Cadastro de Visitante - confirmar senha invalido
    Given Eu estou na pagina de cadastro
    When Eu coloco Subets no campo Login
    And Eu coloco sub_13@gmail.com no campo Email
    And Eu coloco senhasecreta no campo Senha
    And Eu coloco senhasecret no campo Confirmar Senha
    And Eu clico em Concluir Cadastro
    Then Eu devo ver o texto As duas senhas precisam ser identicas

  Scenario: Cadastro de Visitante - login vazio
    Given Eu estou na pagina de cadastro
    When Eu deixo em branco o campo Login
    And Eu coloco sub_13@gmail.com no campo Email
    And Eu coloco senhasecreta no campo Senha
    And Eu coloco senhasecreta no campo Confirmar Senha
    And Eu clico em Concluir Cadastro
    Then Eu devo ver o texto O campo login é obrigatório
    
  Scenario: Cadastro de Visitante - email vazio
    Given Eu estou na pagina de cadastro
    When Eu coloco Subets no campo Login
    And Eu coloco sub_13@gmail.com no campo Email
    And Eu coloco senhasecreta no campo Senha
    And Eu coloco senhasecreta no campo Confirmar Senha
    And Eu clico em Concluir Cadastro
    Then Eu devo ver o texto O campo email é obrigatório
  
  Scenario: Cadastro de Visitante - senha vazia
    Given Eu estou na pagina de cadastro
    When Eu coloco Subets no campo Login
    And Eu coloco sub_13@gmail.com no campo Email
    And Eu deixo em branco o campo Senha
    And Eu deixo em branco o campo Confirmar Senha
    And Eu clico em Concluir Cadastro
    Then Eu devo ver o texto O campo senha é obrigatório

  Scenario: Cadastro de Visitante válida - email invalido
    Given Eu estou na pagina de cadastro
    When Eu coloco Subets no campo Login
    And Eu coloco sub_13@gmail no campo Email
    And Eu coloco senhasecreta no campo Senha
    And Eu coloco senhasecreta no campo Confirmar Senha
    And Eu clico em Concluir Cadastro
    Then Eu devo ver o texto Por favor insira um email válido

  Scenario: Cadastro de Visitante - confirmar senha vazio
    Given Eu estou na pagina de cadastro
    When Eu coloco Subets no campo Login
    And Eu coloco sub_13@gmail.com no campo Email
    And Eu coloco senhasecreta no campo senha
    And Eu deixo em branco o campo Confirmar Senha
    And Eu clico em Concluir Cadastro
    Then Eu devo ver o texto Por favor confirme sua senha