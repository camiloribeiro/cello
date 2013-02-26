require "cello"

Given /^I am on a page that has a radio group with the follow opitions:$/ do |radios|
  step  "I am in the inputs context"
  radios.raw.each do |radio|
    @browser.radios_contains(radio)
  end
end

Given /^the option "(.*?)" is setted$/ do |option|
  @browser.radios_set(option)
  @browser.radios_checked_option_is?(option).should be_true
end

Then /^I should be able to know that the option "(.*?)" is setted$/ do |option|
  @browser.radios_checked_option?.should include(option)
end

Then /^I should be able to know if the option "(.*?)" is not setted$/ do |option|
  @browser.radios_checked_option_is_not?(option).should be_true
  @browser.close
end

Then /^I should fail when ask if the the option "(.*?)" is not setted$/ do |option|
  @browser.radios_checked_option_is_not?(option).should be_false
  @browser.close
end

Then /^I should be able to know if the option "(.*?)" is setted$/ do |option|
  @browser.radios_checked_option_is?(option).should be_true
  @browser.close
end

Then /^I should fail when ask if the option "(.*?)" is setted$/ do |option|
  @browser.radios_checked_option_is?(option).should be_false
  @browser.close
end

Then /^I should be able to know if there is some options setted$/ do
  @browser.radios_has_selected_option?.should be_true
  @browser.close
end

Then /^I should fail when ask if there is some options setted$/ do
  @browser.radios_has_selected_option?.should be_false
  @browser.close
end

Then /^I should be able to select the option "(.*?)"$/ do |option|
  @browser.radios_set(option)
end
