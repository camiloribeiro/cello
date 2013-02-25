require 'mock/page'

describe "Class with element" do
  describe "Element interface" do
    before(:all) do
      @page = Mock::Site::MockPage.new "foo"
    end
    it "Verify if the eliement exists method exists" do
      (@page.methods.map.include? "element_is_real?").should be_true
    end
    it "Click on the element method exists" do
      (@page.methods.map.include? "element_click").should be_true
    end
    it "Verify if the element is visible method exists" do
      (@page.methods.map.include? "element_is_visible?").should be_true
    end
    it "Verify if the element is enable methods exists" do
      (@page.methods.map.include? "element_is_enable?").should be_true
    end
    it "Click with the right button on the element method exists" do
      (@page.methods.map.include? "element_right_click").should be_true
    end
    it "Define extras for specific element method exists" do
      pending
    end
  end
end

