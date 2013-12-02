require File.join(File.dirname(__FILE__), '../../lib/cello')

module StaticPages
  module Site
    class Firefox < Cello::PageObjects::Browser
      def initialize
        super :firefox
      end
    end
  end
end
