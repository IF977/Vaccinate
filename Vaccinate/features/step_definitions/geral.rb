Given("Eu estou na home") do
    visit "/"
end

When('Eu clico no botao ([^"]*)') do |text|
    click_button(text)
end

When(/^Eu coloco ([^"]*) no campo ([^"]*)$/) do |data,input|
    fill_in(input, :with => data)
end