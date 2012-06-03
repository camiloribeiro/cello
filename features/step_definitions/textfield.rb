Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Then /^I should can knows if this page has a textfield named "(.*?)"$/ do |text_field_name|
  @page.send("#{text_field_name}_is_real?").should be_true
  @page.close
end

Then /^I should fail when ask if this page has a textfield named "(.*?)"$/ do |text_field_name|
  @page.send("#{text_field_name}_is_real?").should be_false
  @page.close
end

Then /^I should be able to write a text like "(.*?)" in the textfield$/ do |text|
  @page.text_field_fill_with(text)
  @page.text_field_get_text.should == text
  @page.close
end

Then /^I shoud be able to get the text "(.*?)" from this textfield$/ do |text|
  @page.text_field_get_text.should include(text)
  @page.close
end

Then /^I shoud fail to try get the text "(.*?)" from this textfield$/ do |text|
  @page.text_field_get_text.should_not include(text)
  @page.close
end

Then /^I should be able to know if the text on the textfield does not contais the text "(.*?)"$/ do |text|
  @page.text_field_dont_contain(text).should be_true
  @page.close
end

Then /^I should fail when ask if the text on the textfield does not contais the text "(.*?)"$/ do |text|
  @page.text_field_dont_contain(text).should be_false 
  @page.close
end

Then /^I should be able to know if the text on the textfield contais the text "(.*?)"$/ do |text|
  @page.text_field_contains(text).should be_true
  @page.close
end

Then /^I should fail when ask if the text on the textfield contais the text "(.*?)"$/ do |text|
  @page.text_field_contains(text).should be_false 
  @page.close
end

Then /^I should be able to know if the text on the textfield is exacly the text "(.*?)"$/ do |text|
  @page.text_field_text_is(text).should be_true 
  @page.close
end

Then /^I should fail when ask if the text on the textfield is exacly the text "(.*?)"$/ do |text|
  @page.text_field_text_is(text).should be_false 
  @page.close
end

Then /^I should be able to know if the textfield is empty$/ do
  @page.text_field_is_empty?.should be_true
  @page.close
end

Then /^I should fail when ask if the textfield is empty$/ do
  @page.text_field_is_empty?.should be_false
  @page.close
end

Then /^I should be able to know if the size of the textfield text is "(.*?)"$/ do |size|
  @page.text_field_text_size.should == size.to_i
  @page.close
end

@wip
Then /^I should fail when ask if the size of the textfield text is "(.*?)"$/ do |size|
  @page.text_field_text_size.should_not == size.to_i
  @page.close
end
