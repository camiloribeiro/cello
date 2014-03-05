require "cello"

module Browsers
  module Linux
    class Opera < Cello::PageObjects::Browser
      def initialize
        super :opera
      end
    end
  end
end
