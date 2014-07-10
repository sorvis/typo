Given /^the following articles exist$/ do |table|
#table is a Cucumber::Ast::Table
  table.hashes.each{|item| Article.create(item)} 
end

Then /^the article "(.*?)" should have body "(.*?)"$/ do |arg1, text|
  page.body.should include(text)
end

Given /^I fill in "(.*?)" with id of article titled "(.*?)"$/ do |element, title|
  fill_in element, :with => Article.find_by_title(title).id
end

