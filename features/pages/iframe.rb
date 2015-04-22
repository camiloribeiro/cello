require "cello"

module StaticPages
  module Site
    class IframePage < Cello::PageObjects::Page

      url('file://' + File.dirname(__FILE__) + '/../site/iframe.html')
    end
  end
end
