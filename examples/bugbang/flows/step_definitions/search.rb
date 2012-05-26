Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end
#require File.dirname(__FILE__) + "/../../pages/google"

Given /^I am on The Bug Bang Theory home page$/ do
  @home = BugBang::HomePage.new("http://bugbang.com.br/")
end

When /^I write "(.*?)" on search field$/ do |search_text|
  @home.fill_search_field(search_text) 
end

When /^ask to search$/ do
  @home.run_search_button
end

Then /^I should see the follow results:$/ do |results|
  results.hashes.each do |text|
    @home.search text.to_s 
  end
end

When /^I go to about page$/ do
  @home.run_about_page_button
end

Then /^I should see the text "(.*?)"$/ do |text|
  @home.search text.to_s
end
