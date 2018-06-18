Feature: Login usuario
  Como um Visitante
  Eu quero logar no site
  Para que eu possa acompanhar o calendario de vacinações
  
  Background: 
    Given Eu estou na home
    When Eu clico no botao Login
    Then Eu sou direcionado para a pagina de login
    
  Scenario: Login Valido
    Given Eu estou na pagina de login
    When Eu coloco sub_13@gmail no campo E-mail
    And Eu coloco senhasecreta no campo Senha
    And Eu clico no botão Log in
    Then Eu sou direcionado para a pagina de usuario
  
  Scenario: Login - senha invalida
    Given Eu estou na pagina de login
    When Eu coloco sub_13@gmail no campo E-mail
    And Eu coloco senhaseceta no campo Senha
    And Eu clico no botão Log in
    Then Eu devo continuar na pagina de login

  Scenario: Login - email vazio
    Given Eu estou na pagina de login
    When Eu coloco senhasecreta no campo Senha
    And Eu clico no botão Log in
    Then Eu devo continuar na pagina de login
    
  Scenario: Login - senha vazia
    Given Eu estou na pagina de login
    When Eu coloco sub_13@gmail no campo E-mail
    And Eu clico no botão Log in
    Then Eu devo continuar na pagina de login
  
  Scenario: Login - email invalido
    Given Eu estou na pagina de login
    When Eu coloco sub_13gmail.com no campo E-mail
    And Eu coloco senhasecreta no campo Senha
    And Eu clico no botão Log in
    Then Eu devo continuar na pagina de login


