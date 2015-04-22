require "mock/page"
require File.dirname(__FILE__) + "/spec_helper"

describe Cello::PageObjects::SelectHelper do
  describe "define_extras_for_select" do
    before(:all) do
      @page = Mock::Site::MockPage.new "foo"
    end
    it "Select an option method exists" do
      (@page.methods.map.include? :select_select).should be true
    end
    it "return the selected option method exists" do
      (@page.methods.map.include? :select_selected).should be true
    end
  end
end
