Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Given /^I am on a page that has a radio group with the follow opitions:$/ do |radios|
  @page = StaticPages::Site::InputPage.new
  radios.raw.each do |radio|
    @page.radio_contains(radio)
  end
end

Given /^the option "(.*?)" is setted$/ do |radio|
  @page.radio_has_checked(radio)
end

Then /^I should be able to know that option is setted$/ do
  @pahge.radio_checked_option_is?
end
