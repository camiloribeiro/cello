Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Then /^I should be able to verify if it is checked$/ do
  @page.checkbox_is_checked?
  @page.close
end

Then /^I should be able to verify if it is unchecked$/ do
  @page.checkbox_is_unchecked?
  @page.close
end

Then /^I should be able to check it$/ do
  @page.checkbox_check
  @page.close
end

Then /^I should be able to uncheck it$/ do
  @page.checkbox_uncheck
  @page.close
end

