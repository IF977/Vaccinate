Feature: Cadastro Novo Usuario
  Como um Visitante
  Eu quero me cadastrar no site
  Para que eu possa criar um calendário de vacinações
  
  Background: 
    Given Eu estou na home
    When Eu clico no botao Cadastre-se
    Then Eu sou direcionado para a pagina de cadastro

    
  Scenario: Cadastro de Visitante válida
    Given Eu estou na pagina de cadastro
    When Eu coloco sub_13@gmail.com no campo E-mail
    And Eu coloco senhasecreta no campo Senha
    And Eu coloco senhasecreta no campo Confirme a senha
    And Eu clico no botao de realizar cadastro
    Then Eu sou direcionado para a home
  
  Scenario: Cadastro de Visitante - confirmar senha invalido
    Given Eu estou na pagina de cadastro
    When Eu coloco sub_13@gmail.com no campo E-mail
    And Eu coloco senhasecreta no campo Senha
    And Eu coloco senhasecret no campo Confirme a senha
    And Eu clico no botao de realizar cadastro
    Then Eu devo ver o texto Password confirmation doesn't match Password
    
  Scenario: Cadastro de Visitante - email vazio
    Given Eu estou na pagina de cadastro
    When Eu coloco senhasecreta no campo Senha
    And Eu coloco senhasecreta no campo Confirme a senha
    And Eu clico no botao de realizar cadastro

    Then Eu devo ver o texto Email can't be blank
  
  Scenario: Cadastro de Visitante - senha vazia
    Given Eu estou na pagina de cadastro
    When Eu coloco sub_13@gmail.com no campo E-mail
    And Eu clico no botao de realizar cadastro
    Then Eu devo ver o texto Password can't be blank

  Scenario: Cadastro de Visitante - confirmar senha vazio
    Given Eu estou na pagina de cadastro
    When Eu coloco sub_13@gmail.com no campo E-mail
    And Eu coloco senhasecreta no campo Senha
    And Eu clico no botao de realizar cadastro
    Then Eu devo ver o texto Password confirmation doesn't match Password