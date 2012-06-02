module Cello
  module Structure
    module RadioHelper
      def define_extras_for_radios(name)
        define_method "#{name}_contains" do |radio_value|
          send(name).any? {|e| e.value == radio_value}
        end
        define_method "#{name}_has_selected_option?" do
          send(name).any? {|e| e.checked? == true}
        end
        define_method "#{name}_set" do |radio_value|
          send(name).each do |element|
            element.value == radio_value ? element.set : nil
          end
        end
        define_method "#{name}_checked_option_is?" do |radio_value|
          foo = false
          send(name).each do |element|
            if (element.value == radio_value && element.checked?) 
              foo = true
            end
          end
          return foo
        end
        define_method "#{name}_checked_option_is_not?" do |radio_value|
          foo = false
          send(name).each do |element|
            if (element.value == radio_value && element.checked?) 
              foo = true
            end
          end
          return !foo
        end
        define_method "#{name}_checked_option?" do
          send(name).each do |element|
            if (element.checked?) 
              element.value
            end
          end
        end
      end
    end
  end
end
