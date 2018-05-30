Then(/^Eu sou direcionado para a ([^"]*)$/) do |text|
    expect(page).to have_content(text)
end

Then(/^Eu devo ver o texto ([^"]*)$/) do |text|
    expect(page).to have_content(text)
end

Then(/^Eu devo ver a mensagem ([^"]*)$/) do |text|
    expect(page).to have_content(text)
end
