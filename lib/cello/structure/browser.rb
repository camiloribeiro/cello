require "rubygems"
require "watir-webdriver"
require "headless"

module Cello
  module Structure
    class Browser

      def initialize(browser)
        @headless = Headless.new
        @headless.start
        @browser = Watir::Browser.new browser
      end
      
      attr_reader :browser   
      def visit
        @browser.goto @context.get_url
      end

      def set_context(page)
        @context = page.new(@browser)
      end
      attr_reader :context
  
      def search(text)
       @browser.text.include? text 
      end

      def close
        @browser.close
        @headless.destroy
      end

      def get_picture
        @browser.driver.save_screenshot 'screenshot.png'
      end
      def get_title
        @browser.title
      end
      def get_response_time
        #pending
      end

        def method_missing(method_name, *arguments)
          @context.send(method_name, *arguments)
        end

    end
  end
end

