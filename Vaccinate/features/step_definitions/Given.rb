Given(/^Eu estou na home$/) do
  visit(root_path)
end

Given(/^Eu estou na ([^"]*)$/) do |link|
  visit(link)
end