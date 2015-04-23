require "mock/page"
require File.dirname(__FILE__) + "/spec_helper"

describe Cello::PageObjects::TextareaHelper do
  describe "define_extras_for_textarea" do
    before(:all) do
      @page = Mock::Site::MockPage.new "foo"
    end
    it "Veify if the textarea is enable method exists" do
      (@page.methods.map.include? :test_textarea_is_enable?).should be true
    end
    it "Clear the textarea method exists" do
      (@page.methods.map.include? :test_textarea_clear).should be true
    end
    it "Get the text from the textarea" do
      (@page.methods.map.include? :test_textarea_get_text).should be true
    end
    it "Fill the textarea with some specific text" do
      (@page.methods.map.include? :test_textarea_fill_with).should be true
    end
    it "Verify if the textarea does not contain some text" do
      (@page.methods.map.include? :test_textarea_dont_contain).should be true
    end
    it "Verify if the textarea contains some text" do
      (@page.methods.map.include? :test_textarea_contains).should be true
    end
    it "Verify if the containt of the textarea is exacly some text" do
      (@page.methods.map.include? :test_textarea_text_is).should be true
    end
    it "Verify if the textarea is empty" do
      (@page.methods.map.include? :test_textarea_is_empty?).should be true
    end
    it "Get the size of the containt of the textarea" do
      (@page.methods.map.include? :test_textarea_text_size).should be true
    end
  end
end
