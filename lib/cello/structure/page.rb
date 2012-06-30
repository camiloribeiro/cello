require File.join(File.dirname(__FILE__), "./html_elements/element_helper")
require "rubygems"
require "watir-webdriver"
require "rspec"

module Cello
  module Structure
    class Page
      extend Cello::Structure::ElementHelper

      attr_reader :parent

      def initialize(parent)
        @parent = parent
      end
    end
  end
end

