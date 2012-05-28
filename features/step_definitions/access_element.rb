Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Then /^I should be able to write "(.*?)" in a element using id$/ do |text|

  @page.close
end

Then /^I should be able to write "(.*?)" in a element using name$/ do |text|
  @page.close
end

Then /^I should be able to write "(.*?)" in a element using label$/ do |text|
  @page.close
end

Then /^I should be able to write "(.*?)" in a element using xpath$/ do |text|
  @page.close
end


