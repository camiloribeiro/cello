require "cello"

module Browsers
  module Linux
    class IExplorer < Cello::PageObjects::Browser
      def initialize
        super :iexplorer
      end
    end
  end
end
