require "cello"

module Browsers
  module Linux
    class Safari < Cello::PageObjects::Browser
      def initialize
        super :safari
      end
    end
  end
end
