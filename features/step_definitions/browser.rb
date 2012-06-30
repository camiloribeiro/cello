Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Given /^I have a browser with no context \(blank page\)$/ do
  @browser = StaticPages::Site::Firefox.new
end

When /^I ask for the context inputs$/ do
  @browser.context = StaticPages::Site::InputPage.new(@browser)
end

When /^and I ask to visit the page$/ do
  @browser.visit
end

Then /^I should see the page inputs$/ do
  @browser.title.should == "Inputs page"
  @browser.close
end

Given /^I am in the inputs context$/ do
  @browser = StaticPages::Site::Firefox.new
  @browser.context = StaticPages::Site::InputPage.new(@browser)
  @browser.visit
  @browser.title.should == "Inputs page"
end

When /^I ask for fill the textfield$/ do
  @browser.text_field_fill_with("It Works!")
end

Then /^I should see the filled textfield$/ do
  @browser.text_field_get_text.should == "It Works!"
end

Then /^I should be able to close the browser$/ do
  @browser.close
end

When /^I click on the simple page link$/ do
  @browser.link_click
end

When /^I ask to use the simple page context$/ do
  @browser.context = StaticPages::Site::ResponsePage.new(@browser)
end

Then /^I should fail when try access the old textfield$/ do
 expect { @browser.text_field_get_text}.should raise_error(NoMethodError)
end

Then /^I should be able to verify the text on the new textfield$/ do
  @browser.text_get_text.should == "Worked Again!"
end
