Dir[File.dirname(__FILE__) + "/../../pages/*.rb"].each do |file| 
  require file 
end

Given /^I am on a page that has a element$/ do
  @page = StaticPages::Site::InputPage.new
end

Given /^that element is named as:$/ do |elements|
  elements.raw.each do |name|
    @page.send("#{name}_is_real?")
  end
  @elements = elements
end

Then /^I want click on this element$/ do
  @elements.raw.each do |name|
    @page.send("#{name}_click")
  end
  @page.close
end

Then /^I want know if this element is visible$/ do
  @elements.raw.each do |name|
    @page.send("#{name}_is_visible?")
  end
  @page.close
end

Then /^I want know if this element is enable$/ do
  @elements.raw.each do |name|
    @page.send("#{name}_is_enable?")
  end
  @page.close
end

Then /^I want know if this element exists$/ do
  @elements.raw.each do |name|
    @page.send("#{name}_is_real?")
  end
  @page.close
end

Then /^I shoud be able to click with the right button in this element$/ do
  @elements.raw.each do |name|
    @page.send("#{name}_right_click")
  end
  @page.close
end
