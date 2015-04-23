require File.join(File.dirname(__FILE__),"../../lib/cello/pageobjects/page")
require File.dirname(__FILE__) + "/../spec_helper"

module Mock
  module Site
    class MockPage < Cello::PageObjects::Page
      element :test_element,  :element, :id => 'elem1'
      element :test_text_field,  :text_field, :id => 'text1'
      element :test_text_fieldname,  :text_field, :name => 'text1'
      element :test_text_fieldxpath,  :text_field, :xpah, '//*[@id="text1"]'
      element :test_checkbox,  :checkbox, :id => 'check1'
      element :test_textarea,  :textarea, :id => 'area1'
      element :test_radios,  :radios, :name => 'items'
      element :test_select,  :select, :id => 'select1'
      element :test_link,  :link, :id => 'link1'
      
      def get_url
        'file://' + File.dirname(__FILE__) + '/../site/inputs.html'
      end

      def initialize(teste)
        super(teste)
      end
    end
  end
end
