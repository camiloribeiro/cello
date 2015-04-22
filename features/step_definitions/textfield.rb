require "cello"

Then /^I should can knows if this page has a textfield named "(.*?)"$/ do |text_field_name|
  @browser.send("#{text_field_name}_is_real?").should be true
  @browser.close
end

Then /^I should fail when ask if this page has a textfield named "(.*?)"$/ do |text_field_name|
  @browser.send("#{text_field_name}_is_real?").should be false
  @browser.close
end

Then /^I should be able to write a text like "(.*?)" in the textfield$/ do |text|
  @browser.text_field_fill_with(text)
  @browser.text_field_get_text.should == text
  @browser.close
end

Then /^I shoud be able to get the text "(.*?)" from this textfield$/ do |text|
  @browser.text_field_get_text.should include(text)
  @browser.close
end

Then /^I shoud fail to try get the text "(.*?)" from this textfield$/ do |text|
  @browser.text_field_get_text.should_not include(text)
  @browser.close
end

Then /^I should be able to know if the text on the textfield does not contais the text "(.*?)"$/ do |text|
  @browser.text_field_dont_contain(text).should be true
  @browser.close
end

Then /^I should fail when ask if the text on the textfield does not contais the text "(.*?)"$/ do |text|
  @browser.text_field_dont_contain(text).should be false 
  @browser.close
end

Then /^I should be able to know if the text on the textfield contais the text "(.*?)"$/ do |text|
  @browser.text_field_contains(text).should be true
  @browser.close
end

Then /^I should fail when ask if the text on the textfield contais the text "(.*?)"$/ do |text|
  @browser.text_field_contains(text).should be false 
  @browser.close
end

Then /^I should be able to know if the text on the textfield is exacly the text "(.*?)"$/ do |text|
  @browser.text_field_text_is(text).should be true 
  @browser.close
end

Then /^I should fail when ask if the text on the textfield is exacly the text "(.*?)"$/ do |text|
  @browser.text_field_text_is(text).should be false 
  @browser.close
end

Then /^I should be able to know if the textfield is empty$/ do
  @browser.text_field_is_empty?.should be true
  @browser.close
end

Then /^I should fail when ask if the textfield is empty$/ do
  @browser.text_field_is_empty?.should be false
  @browser.close
end

Then /^I should be able to know if the size of the textfield text is "(.*?)"$/ do |size|
  @browser.text_field_text_size.should == size.to_i
  @browser.close
end

@wip
Then /^I should fail when ask if the size of the textfield text is "(.*?)"$/ do |size|
  @browser.text_field_text_size.should_not == size.to_i
  @browser.close
end
