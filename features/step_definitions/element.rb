require "cello"

Given /^that element is named as:$/ do |elements|
  elements.raw.each do |name|
    @browser.send("#{name.first}_is_real?")
  end
  @elements = elements
end

Then /^I want click on this element$/ do
  @elements.raw.each do |name|
    @browser.send("#{name.first}_click")
  end
  @browser.close
end

Then /^I want know if this element is visible$/ do
  @elements.raw.each do |name|
    @browser.send("#{name.first}_is_visible?")
  end
  @browser.close
end

Then /^I want know if this element is enable$/ do
  @elements.raw.each do |name|
    @browser.send("#{name.first}_is_enable?")
  end
  @browser.close
end

Then /^I want know if this element exists$/ do
  @elements.raw.each do |name|
    @browser.send("#{name.first}_is_real?")
  end
  @browser.close
end

Then /^I shoud be able to click with the right button in this element$/ do
  @elements.raw.each do |name|
    @browser.send("#{name.first}_right_click")
  end
  @browser.close
end
