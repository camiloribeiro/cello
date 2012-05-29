module Cello
  module Structure
    module CheckboxHelper
      def define_extras_for_checkbox(name)
        define_method "#{name}_check" do
          send(name).set
        end
        define_method "#{name}_uncheck" do
          send(name).clear
        end
        define_method "#{name}_is_checked?" do
          send(name).set?
        end
        define_method "#{name}_is_unchecked?" do
          !(send(name).set?)
        end
      end
    end
  end
end
