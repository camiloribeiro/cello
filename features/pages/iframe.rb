require "cello"
require File.dirname(__FILE__) + "/input_fields_module.rb"

module StaticPages
  module Site
    class IframePage < Cello::PageObjects::Page
      iframe "check", StaticPages::Site::InputIframe, :id => 'annoying-iframe'

      def url 
        'file://' + File.dirname(__FILE__) + '/../site/iframe.html'
      end
    end
  end
end
