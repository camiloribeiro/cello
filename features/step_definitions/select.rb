Given /^I am on a page that has a select$/ do
  @page = StaticPages::Site::InputPage.new
end

Then /^I should be able to get the options available of it$/ do
  @page.select_get_options.should == ["...","Cello","Cucumber","Ruby","Rspec","QA Rocks!"]
  @page.close
end

