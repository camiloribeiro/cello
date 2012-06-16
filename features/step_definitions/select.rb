Given /^I am on a page that has a select$/ do
  @page = StaticPages::Site::InputPage.new
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
