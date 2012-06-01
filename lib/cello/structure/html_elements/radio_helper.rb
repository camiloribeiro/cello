module Cello
  module Structure
    module RadioHelper
      def define_extras_for_radios(name)
        define_method "#{name}_contains" do |radio_value|
          send(name).any? {|e| e.value == radio_value}
        end
      end
    end
  end
end
