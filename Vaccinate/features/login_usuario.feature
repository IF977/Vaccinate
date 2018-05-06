Feature: Login usuario
  Como um Visitante
  Eu quero logar no site
  Para que eu possa acompanhar o calendario de vacinações
  
  Background: 
    Given Eu estou na home
    When Eu clico no botão Login
    Then Eu sou direcionado para a página de Login
    
  Scenario: Login Válido
    Given Eu estou na pagina de Login
    When Eu coloco Subets no campo Login
    And Eu coloco senhasecreta no campo Senha
    And Eu clico no botão Entrar
    Then Eu sou direcionado para a página de usuário
  
  Scenario: Login - senha invalida
    Given Eu estou na pagina de Login
    When Eu coloco Subets no campo Login
    And Eu coloco senhaseceta no campo Senha
    And Eu clico no botão Entrar
    Then Eu devo ver a mensagem Senha incorreta

  Scenario: Login - Login vazio
    Given Eu estou na pagina de Login
    When Eu deixo em branco o campo Login
    And Eu coloco senhasecreta no campo Senha
    And Eu clico no botão Entrar
    Then Eu devo ver a mensagem Por favor insira um login
    
  Scenario: Login - senha vazia
    Given Eu estou na pagina de Login
    When Eu coloco Subets no campo Login
    And Eu deixo em branco o campo Senha
    And Eu clico no botão Entrar
    Then Eu devo ver a mensagem Por favor insira uma senha
  
  Scenario: Login - login invalido
    Given Eu estou na pagina de Login
    When Eu coloco Subts no campo Login
    And Eu coloco senhasecreta no campo Senha
    And Eu clico no botão Entrar
    Then Eu devo ver a mensagem Login inexistente, crie uma conta para continuar


