require "cello"

module StaticPages
  module Site
    class Phantom < Cello::PageObjects::Browser
      def initialize
        super :phantomjs
      end
    end
  end
end
