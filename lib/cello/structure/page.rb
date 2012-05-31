require File.join(File.dirname(__FILE__), "./html_elements/element_helper")
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

      def close
        @browser.close
      end

      def browser
        @browser
      end

      def get_picture
        @browser.driver.save_screenshot 'screenshot.png'
      end
      def get_title
        @browser.titles
      end
      def get_response_time
        #pending
      end
    end
  end
end

