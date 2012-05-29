Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Then /^I should be able to write "(.*?)" in a element using id$/ do |text|
  @page.text_field_fill_with(text)
  @page.close
end

Then /^I should be able to write "(.*?)" in a element using name$/ do |text|
  @page.text_fieldname_fill_with(text)
  @page.close
end

Then /^I should be able to write "(.*?)" in a element using label$/ do |text|
  #pending
end

Then /^I should be able to write "(.*?)" in a element using xpath$/ do |text|
  #pending
  @page.text_fieldxpath_fill_with(text)
end


