require "cello"

module StaticPages
  module Site
    module InputIframe 
      extend Cello::PageObjects::Iframe

       element :text_inside_iframe,  :text_field, :id => 'text1'
      
    end
  end
end
