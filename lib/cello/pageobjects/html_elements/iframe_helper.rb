Dir[File.dirname(__FILE__) + "/*.rb"].each do |file| 
  require file 
end

module Cello
  module PageObjects
    module IframeHelper
      
      def iframe name, elements, *args
        class_eval do
          include elements
          define_method name do
            engine.browser.iframe(*args)
          end
        end

      end

    end
  end
end
