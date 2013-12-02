require "cello"

module Browsers
  module Linux
    class Chrome < Cello::PageObjects::Browser
      def initialize
        super :chrome
      end
    end
  end
end
