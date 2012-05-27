require File.join(File.dirname(__FILE__), "element_helper")
require "rubygems"
require "selenium-webdriver"
require "watir-webdriver"

module Cello
  module Structure
    class Page
      extend Cello::Structure::ElementHelper

      attr_reader :browser
      def initialize(url)
        @browser = Watir::Browser.new :firefox
        @browser.goto url
      end
   
      def visit
      end
  
      def search(text)
       @browser.text.include? text 
      end

      def browser
        @browser
      end
    end
  end
end
