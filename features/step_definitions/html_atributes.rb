Given /^the textfield has the value "(.*?)"$/ do |value|
  @page.text_field_fill_with(value)
  @value == value
end

When /^I ask for the "(.*?)" of it element$/ do |att|
  @text_value == @page.text_field_get(att)
end

Then /^I should see the value of it$/ do
  @text_value.should == @value 
  @page.close
end
