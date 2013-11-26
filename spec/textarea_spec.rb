require "mock/page"
require File.dirname(__FILE__) + "/spec_helper"

describe Cello::Structure::TextareaHelper do
  describe "define_extras_for_textarea" do
    before(:all) do
      @page = Mock::Site::MockPage.new "foo"
    end
    it "Veify if the textarea is enable method exists" do
      (@page.methods.map.include? :textarea_is_enable?).should be_true
    end
    it "Clear the textarea method exists" do
      (@page.methods.map.include? :textarea_clear).should be_true
    end
    it "Get the text from the textarea" do
      (@page.methods.map.include? :textarea_get_text).should be_true
    end
    it "Fill the textarea with some specific text" do
      (@page.methods.map.include? :textarea_fill_with).should be_true
    end
    it "Verify if the textarea does not contain some text" do
      (@page.methods.map.include? :textarea_dont_contain).should be_true
    end
    it "Verify if the textarea contains some text" do
      (@page.methods.map.include? :textarea_contains).should be_true
    end
    it "Verify if the containt of the textarea is exacly some text" do
      (@page.methods.map.include? :textarea_text_is).should be_true
    end
    it "Verify if the textarea is empty" do
      (@page.methods.map.include? :textarea_is_empty?).should be_true
    end
    it "Get the size of the containt of the textarea" do
      (@page.methods.map.include? :textarea_text_size).should be_true
    end
  end
end
