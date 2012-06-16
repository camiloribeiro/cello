module Cello
  module Structure
    module SelectHelper
      def define_extras_for_select(name)
        define_method "#{name}_get_options" do
          options = Array.new
          send(name).options.each do |option|
            options.push option.text
          end
          options
        end
        define_method "clear_#{name}" do
          send(name).clear
        end
      end
    end
  end
end
