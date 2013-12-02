require "cello"

module Browsers
  module Linux
    class Firefox < Cello::PageObjects::Browser
      def initialize
        super :firefox
      end
    end
  end
end
