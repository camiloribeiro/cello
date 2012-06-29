Given /^I am on a page that has a select$/ do
  @page = StaticPages::Site::Firefox.new
  @page.set_context StaticPages::Site::InputPage
  @page.visit
end

Then /^I should be able to get the options available of it$/ do
  @page.select_get_options.should == ["...","Cello","Cucumber","Ruby","Rspec","QA Rocks!"]
  @page.close
end

Then /^I should be able to select an option on it$/ do
  @page.select_select("Cucumber")
end

Then /^be sure that the option setted is the option selected$/ do
  @page.select_is("Cucumber").should be_true
  @page.close
end

Given /^the option "(.*?)" is selected$/ do |option|
  @page.select_select option
end

Then /^I should be able to know the option "(.*?)" is selected$/ do |option|
  @page.select_selected.should == option
  @page.close
end

Then /^I should fail when ask if the option "(.*?)" is selected$/ do |option|
  @page.select_selected.should_not == option
  @page.close
end

Then /^I should be able to go to the default option of it$/ do
  @page.select_clear
  @page.select_selected.should == "..."
end

