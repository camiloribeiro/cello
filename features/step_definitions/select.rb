Then /^I should be able to get the options available of it$/ do
  @browser.select_get_options.should == ["...","Cello","Cucumber","Ruby","Rspec","QA Rocks!"]
  @browser.close
end

Then /^I should be able to select an option on it$/ do
  @browser.select_select("Cucumber")
end

Then /^be sure that the option setted is the option selected$/ do
  @browser.select_is("Cucumber").should be_true
  @browser.close
end

Given /^the option "(.*?)" is selected$/ do |option|
  @browser.select_select option
end

Then /^I should be able to know the option "(.*?)" is selected$/ do |option|
  @browser.select_selected.should == option
  @browser.close
end

Then /^I should fail when ask if the option "(.*?)" is selected$/ do |option|
  @browser.select_selected.should_not == option
  @browser.close
end

Then /^I should be able to go to the default option of it$/ do
  @browser.select_clear
  @browser.select_selected.should == "..."
end

