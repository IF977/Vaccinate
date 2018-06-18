Given('Eu estou na pagina de login') do
    visit "/usuarios/sign_in"
end

When('Eu clico no botao Login') do
    click_on("Login")
end

When('Eu clico no botão Log in') do
    click_on("Log in")
end

Then('Eu sou direcionado para a pagina de login') do
    visit "/usuarios/sign_in"
end

Then('Eu sou direcionado para a pagina de usuario') do
    visit "/"
end

Then('Eu devo continuar na pagina de login') do
    visit "/usuarios/sign_in"
end
