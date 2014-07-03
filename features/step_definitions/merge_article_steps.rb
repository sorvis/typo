Given /^the following articles exist$/ do |table|
#table is a Cucumber::Ast::Table
  table.hashes.each{|item| Article.create(item)} 
end

Then /^the article "(.*?)" should have body "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

