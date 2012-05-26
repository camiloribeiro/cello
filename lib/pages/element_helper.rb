module Cello
  module Structure
    module ElementHelper

      def element(name, type, *args)
        class_eval do
          define_method name do
            browser.send(type, *args)
          end

          define_extras(name, type)
        end
      end

      protected

      def define_extras(name, type)
        method_name = "define_extras_for_#{type}"
        send(method_name, name) if respond_to? method_name
      end

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
      def define_extras_for_text_field(name)
        define_method "fill_#{name}" do |value|
          send(name).set(value)
        end
        define_method "clear_#{name}" do
          send(name).clear
        end
        define_method "#{name}_text" do
          send(name).value
        end
      end
      def define_extras_for_select(name)
        define_method "select_#{name}" do |value|
          send(name).select(value)
        end
        define_method "clear_#{name}" do
          send(name).select("Selecione...")
        end
      end
      def define_extras_for_radio(name)
        define_method "set_#{name}" do
          send(name).set
        end
      end
      def define_extras_for_button(name)
        define_method "run_#{name}" do
          send(name).click
        end
      end
      def define_extras_for_link(name)
        define_method "click_#{name}" do
          send(name).click
        end
      end
      def define_extras_for_div(name)
        define_method "#{name}_text" do
          send(name).text
        end
        define_method "#{name}_check_text" do |text|
          send(name).text.include? text
        end
        define_method "#{name}_is" do
          send(name).exists?
        end
      end
      def define_extras_for_hidden(name)
        define_method "#{name}_text" do
          send(name).text
        end
      end
      def define_extras_for_span(name)
        define_method "run_#{name}" do
          send(name).click
        end
      end
    end
  end
end
