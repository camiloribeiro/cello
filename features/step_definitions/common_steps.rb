Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Given /^I am on a page that has a textfield$/ do
  @page = StaticPages::Site::InputPage.new
end

Given /^I am on a page that has a textarea$/ do
  @page = StaticPages::Site::InputPage.new
end

Given /^I am on a page that has a checkbox$/ do
  @page = StaticPages::Site::InputPage.new
end

And /^There is a textfield with the text "(.*?)"$/ do |text|
  @page.text_field_fill_with(text)
end

And /^There is a textarea with the text "(.*?)"$/ do |text|
  @page.textarea_fill_with(text)
end

And /^There is a checkbox checked$/ do 
  @page.checkbox_check
end
