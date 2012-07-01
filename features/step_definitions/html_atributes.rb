Given /^the textfield has the value "(.*?)"$/ do |value|
  @page.text_field_fill_with(value)
  @value == value
end

When /^I ask for the value of it element$/ do
  @text_value == @page.text_field_value
end

Then /^I should see the value of it$/ do
  @text_value.should == @value 
end
