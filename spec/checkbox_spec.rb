require 'mock/page'
require "pry"

describe Cello::PageObjects::CheckboxHelper do
  describe "define_extras_for_checkbox" do
    before(:all) do
      @page = Mock::Site::MockPage.new "foo"
    end
    it "Verify if is checked method exists" do
      (@page.methods.map.include? :checkbox_is_checked?).should be true
    end
    it "Verify if there it is unchecked" do
      (@page.methods.map.include? :checkbox_is_unchecked?).should be true
    end
    it "Check a Checkbox" do
      (@page.methods.map.include? :checkbox_check).should be true
    end
    it "Clear a Checkbox" do
      (@page.methods.map.include? :checkbox_uncheck).should be true
    end
  end
end
