#require 'sourcify'

module Cello
  module Structure
    module LogHelper
      
      def logger(name, method, type, params=nil)
          ts = Time.now
         # wait_element_helper name
          left = yield
          params = "NONE" if params.nil?
          #binding.pry
          puts  "
         Element: #{name}
            Type: #{type} 
            Method: #{method} 
            Left #{left}
            Params: #{params}
            Code: #{yield} 
            => #{(Time.now - ts).round 4} seconds"
         left
      end
      
      def wait_element_helper(name)
        timeout = 1
        while !send("#{name}_exit_wait?") && time < timeout do
          sleep 0.1
          time += 0.1
        end
      end      

    end
  end
end
