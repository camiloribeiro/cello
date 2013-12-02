require "mock/page"
require File.dirname(__FILE__) + "/spec_helper"

describe Cello::PageObjects::TextfieldHelper do
  describe "define_extras_for_textfield" do
    before(:all) do
      @page = Mock::Site::MockPage.new "foo"
    end
    it "Veify if the textfield is enabled" do
      (@page.methods.map.include? :text_field_is_enable?).should be_true
    end
    it "Clear the textfield" do
      (@page.methods.map.include? :text_field_clear).should be_true
    end
    it "Get the text from the textfield" do
      (@page.methods.map.include? :text_field_get_text).should be_true
    end
    it "Fill the textfield with some specific text" do
      (@page.methods.map.include? :text_field_fill_with).should be_true
    end
    it "Verify if the textfield does not contain some text" do
      (@page.methods.map.include? :text_field_dont_contain).should be_true
    end
    it "Verify if the textfield contains some text" do
      (@page.methods.map.include? :text_field_contains).should be_true
    end
    it "Verify if the containt of the textfield is exacly some text" do
      (@page.methods.map.include? :text_field_text_is).should be_true
    end
    it "Verify if the textfield is empty" do
      (@page.methods.map.include? :text_field_is_empty?).should be_true
    end
    it "Get the size of the containt of the textfield" do
      (@page.methods.map.include? :text_field_text_size).should be_true
    end
  end
end
