require 'mock/page'
require File.dirname(__FILE__) + "/spec_helper"

describe "Class with element" do
  describe "Element interface" do
    before(:all) do
      @page = Mock::Site::MockPage.new "foo"
    end
    it "Verify if the get native element exists" do
      (@page.methods.map.include? :test_element).should be true
    end
    it "Verify if the element exists method exists" do
      (@page.methods.map.include? :test_element_is_real?).should be true
    end
    it "Click on the element method exists" do
      (@page.methods.map.include? :test_element_click).should be true
    end
    it "Verify if the element is visible method exists" do
      (@page.methods.map.include? :test_element_is_visible?).should be true
    end
    it "Verify if the element is enable methods exists" do
      (@page.methods.map.include? :test_element_is_enable?).should be true
    end
    it "Click with the right button on the element method exists" do
      (@page.methods.map.include? :test_element_right_click).should be true
    end
    it "Wait visible for on the element method exists" do
      (@page.methods.map.include? :test_element_wait_visible_for).should be true
    end
    it "Wait exists for on the element method exists" do
      (@page.methods.map.include? :test_element_wait_exists_for).should be true
    end
  end
end

