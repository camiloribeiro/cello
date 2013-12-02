require File.join(File.dirname(__FILE__), '../../lib/cello')

module StaticPages
  module Site
    class ResponsePage < Cello::PageObjects::Page
      element :text,  :text_field, :id => 'new_element'
      
      def get_url
        'file://' + File.dirname(__FILE__) + '/../site/read_page.html'
      end

      def initialize(teste)
        super(teste)
      end
    end
  end
end
