module Cello
  module Structure
    module CheckboxHelper
      def define_extras_for_checkbox(name)
        define_method "check_#{name}" do
          send(name).set
        end
        define_method "clear_#{name}" do
          send(name).clear
        end
        define_method "is_checked_#{name}" do
          send(name).set?
        end
      end
    end
  end
end
