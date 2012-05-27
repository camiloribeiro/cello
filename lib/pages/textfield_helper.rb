module Cello
  module Structure
    module TextfieldHelper
      def define_extras_for_text_field(name)
        define_method "clear_#{name}" do
          send(name).clear
        end
      end
    end
  end
end
