Given /^the textfield has the value "(.*?)"$/ do |value|
#  require "pry"; binding.pry
  @browser.text_field_fill_with(value)
  @value == value
end

When /^I ask for the "(.*?)" of it element$/ do |att|
  @text_value == @browser.text_field_get(att)
end

Then /^I should see the value of it$/ do
  @text_value.should == @value 
  @browser.close
end
