require File.join(File.dirname(__FILE__), "./html_elements/element_helper")
require "rubygems"
require "watir-webdriver"
require "headless"

module Cello
  module Structure
    class Page
      extend Cello::Structure::ElementHelper

      attr_reader :browser
      def initialize(url)
        @headless = Headless.new
        @headless.start
        @browser = Watir::Browser.start url
      end
   
      def visit
      end
  
      def search(text)
       @browser.text.include? text 
      end

      def close
        @browser.close
        @headless.destroy
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

