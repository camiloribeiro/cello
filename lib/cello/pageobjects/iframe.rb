Dir[File.dirname(__FILE__) + "/html_elements/*.rb"].each do |file| 
  require file 
end

module Cello
  module PageObjects
    module Iframe
      include Cello::PageObjects::ElementHelper
    end
  end
end
