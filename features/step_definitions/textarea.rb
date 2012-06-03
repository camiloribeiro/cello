Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Then /^I should can knows if this page has a textarea$/ do
  @page.textarea_is_real?.should be_true
  @page.close
end

Then /^I should be able to write a text like "(.*?)" in the textarea$/ do |text|
  @page.textarea_fill_with(text)
  @page.close
end

Then /^I shoud be able to get the text "(.*?)" from this textarea$/ do |text|
  @page.textarea_get_text.should include(text)
  @page.close
end

Then /^I should be able to know if the text on the textarea does not contais the text "(.*?)"$/ do |text|
  @page.textarea_dont_contain(text).should be_true
  @page.close
end

Then /^I should fail when ask if the text on the textarea does not contais the text "(.*?)"$/ do |text|
  @page.textarea_dont_contain(text).should be_false
  @page.close
end

Then /^I should be able to know if the text on the textarea contais the text "(.*?)"$/ do |text|
  @page.textarea_contains(text).should be_true 
  @page.close
end

Then /^I should fail when ask if the text on the textarea contais the text "(.*?)"$/ do |text|
  @page.textarea_contains(text).should be_false 
  @page.close
end

Then /^I should be able to know if the text on the textarea is exacly the text "(.*?)"$/ do |text|
  @page.textarea_text_is(text).should be_true 
  @page.close
end

Then /^I should fail when ask if the text on the textarea is exacly the text "(.*?)"$/ do |text|
  @page.textarea_text_is(text).should be_false 
  @page.close
end

Then /^I should be able to know if the textarea is empty$/ do
  @page.textarea_is_empty?.should be_true
  @page.close
end

Then /^I should fail when ask if the textarea is empty$/ do
  @page.textarea_is_empty?.should be_false
  @page.close
end

Then /^I should be able to know if the size of the textarea text is "(.*?)"$/ do |size|
  @page.textarea_text_size.should == size.to_i
  @page.close
end

Then /^I should fail when ask if the size of the textarea text is "(.*?)"$/ do |size|
  @page.textarea_text_size.should_not == size.to_i
  @page.close
 end
