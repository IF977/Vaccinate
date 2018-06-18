Given("Eu estou na pagina de cadastro") do
    visit "/usuarios/sign_up"
end

When('Eu clico no botao Cadastre-se') do
    click_on("Cadastre-se")
end

When('Eu clico no botao de realizar cadastro') do
    click_button('Cadastre-se', 'commit')
end

Then('Eu sou direcionado para a pagina de cadastro') do
    visit "/usuarios/sign_up"
end

Then(/^Eu devo ver o texto ([^"]*)$/) do |text|
    text
end

Then('Eu sou direcionado para a home') do
    visit "/"
end
