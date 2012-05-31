module Cello
  module Structure
    module SelectHelper
      def define_extras_for_select(name)
        define_method "select_#{name}" do |value|
          send(name).select(value)
        end
        define_method "clear_#{name}" do
          send(name).select("Selecione...")
        end
      end
    end
  end
end
