require "cello"

module StaticPages
  module Site
    class ResponsePage < Cello::PageObjects::Page
      element :text,  :text_field, :id => 'new_element'
      
    end
  end
end
