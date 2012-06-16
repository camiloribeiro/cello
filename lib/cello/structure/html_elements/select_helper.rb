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
        define_method "#{name}_select" do |option|
          send(name).select option
        end
        define_method "#{name}_is" do |option|
          send(name).selected_options.last.text == option
        end
        define_method "#{name}_selected" do
          send(name).selected_options.last.text
        end
        define_method "clear_#{name}" do
          send(name).clear
        end
      end
    end
  end
end
