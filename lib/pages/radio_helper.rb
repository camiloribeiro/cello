module Cello
  module Structure
    module RadioHelper
      def define_extras_for_radio(name)
        define_method "set_#{name}" do
          send(name).set
        end
      end
    end
  end
end
