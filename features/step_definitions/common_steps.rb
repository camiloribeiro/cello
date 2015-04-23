require "cello"

Given /^I am on a page that has (?:a|an) (?:select|element|checkbox|textfield|textarea)$/ do
  step  "I am in the inputs context"
end

And /^There is a textfield with the text "(.*?)"$/ do |text|
  @browser.text_field_fill_with(text)
end

And /^There is a textarea with the text "(.*?)"$/ do |text|
  @browser.textarea_fill_with(text)
end

And /^There is a checkbox checked$/ do 
  @browser.checkbox_check
end

Given /^I am on a page that has a textfield inside a iframe$/  do
  @browser.should be nil
  @browser = StaticPages::Site::Phantom.new
  @browser.title.should == ""
  @browser.context StaticPages::Site::IframePage
  @browser.title.should == ""
  @browser.visit
  @browser.title.should == "Iframe page"
end

Then /^I should be able to write "(.*?)" in a element inside the iframe using id$/ do |text|
  @browser.text_inside_iframe_fill_with(text)
  @browser.close
end
