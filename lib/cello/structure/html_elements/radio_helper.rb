module Cello
  module Structure
    module RadioHelper
      def define_extras_for_radio(name)
        define_method "#{name}_contains" do
          send(name).set
        end
      end
    end
  end
end
