require "rubygems"
require "watir-webdriver"

module Cello
  module PageObjects
    class Hub
      attr_accessor :context
      attr_reader :browser

      def initialize hub_url, caps
        @browser = 
          Watir::Browser.new(  
                             :remote,  
                             :url => hub_url,  
                             :desired_capabilities => caps
          )
      end
      
      def visit
        @context.visit
      end

      def context page
        @context = page.new @browser 
      end

      def search text 
       @browser.text.include? text 
      end

      def close
        @browser.close
      end

      def get_screenshot
        @browser.driver.save_screenshot 'screenshot.png'
      end

      def title
        @browser.title
      end

      def response_time
        #pending
      end

      def method_missing method_name, *arguments
        @context.send method_name, *arguments
      end
    end
  end
end
