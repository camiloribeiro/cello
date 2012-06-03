Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Given /^I am on a page that has a radio group with the follow opitions:$/ do |radios|
  @page = StaticPages::Site::InputPage.new
  radios.raw.each do |radio|
    @page.radios_contains(radio)
  end
end

Given /^the option "(.*?)" is setted$/ do |option|
  @page.radios_set(option)
  @page.radios_checked_option_is?(option).should be_true
end

Then /^I should be able to know that the option "(.*?)" is setted$/ do |option|
  @page.radios_checked_option?.should include(option)
end

Then /^I should be able to know if the option "(.*?)" is not setted$/ do |option|
  @page.radios_checked_option_is_not?(option).should be_true
  @page.close
end

Then /^I should fail when ask if the the option "(.*?)" is not setted$/ do |option|
  @page.radios_checked_option_is_not?(option).should be_false
  @page.close
end

Then /^I should be able to know if the option "(.*?)" is setted$/ do |option|
  @page.radios_checked_option_is?(option).should be_true
  @page.close
end

Then /^I should fail when ask if the option "(.*?)" is setted$/ do |option|
  @page.radios_checked_option_is?(option).should be_false
  @page.close
end

Then /^I should be able to know if there is some options setted$/ do
  @page.radios_has_selected_option?.should be_true
  @page.close
end

Then /^I should fail when ask if there is some options setted$/ do
  @page.radios_has_selected_option?.should be_false
  @page.close
end

Then /^I should be able to select the option "(.*?)"$/ do |option|
  @page.radios_set(option)
end
