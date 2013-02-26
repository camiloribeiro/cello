require "cello"

Then /^I should be able to verify if it is checked$/ do
  @browser.checkbox_is_checked?
  @browser.close
end

Then /^I should be able to verify if it is unchecked$/ do
  @browser.checkbox_is_unchecked?
  @browser.close
end

Then /^I should be able to check it$/ do
  @browser.checkbox_check
  @browser.close
end

Then /^I should be able to uncheck it$/ do
  @browser.checkbox_uncheck
  @browser.close
end

