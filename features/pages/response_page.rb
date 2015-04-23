require "cello"

module StaticPages
  module Site
    class ResponsePage < Cello::PageObjects::Page
      element :text,  :text_field, :id => 'new_element'

      def url 
        'file://' + File.dirname(__FILE__) + '/../site/read_page.html'
      end
      
    end
  end
end
