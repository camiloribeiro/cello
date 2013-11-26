require "mock/page"
require File.dirname(__FILE__) + "/spec_helper"

describe Cello::Structure::SelectHelper do
  describe "define_extras_for_select" do
    before(:all) do
      @page = Mock::Site::MockPage.new "foo"
    end
    it "Select an option method exists" do
      (@page.methods.map.include? :select_select).should be_true
    end
    it "go to default or empty option method exists" do
      pending
      (@page.methods.map.include? :select_clear).should be_true
    end
    it "return the selected option method exists" do
      (@page.methods.map.include? :select_selected).should be_true
    end
  end
end
