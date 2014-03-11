require File.join(File.dirname(__FILE__), "./html_elements/element_helper")
require "rspec"

module Cello
  module PageObjects
    class Page
      extend Cello::PageObjects::ElementHelper
      attr_reader :engine

      def initialize(engine)
        @engine = engine
      end

      def visit
        @engine.goto @@url
      end

      def self.url(url)
        @@url = url
      end

    end
  end
end

