Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Given /^I am on The Bug Bang Theory home page$/ do
  @home = BugBang::HomePage.new("http://bugbang.com.br/")
end

When /^I write "(.*?)" on search field$/ do |search_text|
  @home.search_field_fill_with(search_text) 
end

When /^ask to search$/ do
  @home.search_button_click
end

Then /^I should see the follow results:$/ do |results|
  results.hashes.each do |text|
    @home.search text.to_s 
  end
end

When /^I go to about page$/ do
  @home.about_page_button_click
end

Then /^I should see the text "(.*?)"$/ do |text|
  @home.search text.to_s
end

Then /^I want see the the last twelve postblog session$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^It should be twelve links$/ do
  pending # express the regexp above with the code you wish you had
end
