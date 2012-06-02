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
  @page.radios_checked_option_is?(option)
end

Then /^I should be able to know that option is setted$/ do
  @page.radios_checked_option?
end

Then /^I should be able to know it the option "(.*?)" is not setted$/ do |option|
  @page.radios_checked_option_is_not?(option)
  @page.close
end

Then /^I should be able to know it the option "(.*?)" is setted$/ do |option|
  @page.radios_checked_option_is?(option)
  @page.close
end

Then /^I should be able to know if there is some options setted$/ do
  @page.radios_has_selected_option?
  @page.close
end

Then /^I should be able to select the option "(.*?)"$/ do |option|
  @page.radios_set(option)
  @page.close
end
