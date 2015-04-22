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

Given(/^I am on a page that has a textfield inside a iframe$/) do
  @user.should be nil
  @user = StaticPages::Site::Phantom.new
  @user.title.should == ""
  @user.context StaticPages::Site::IframePage
  @user.title.should == ""
  @user.visit
  # require "pry"; binding.pry
  @user.title.should == "Iframe page"
end
