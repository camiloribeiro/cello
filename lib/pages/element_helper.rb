Dir[File.dirname(__FILE__) + "/*.rb"].each do |file| 
  require file 
end

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
        
        define_method "#{name}_fill_with" do |value|
          send(name).set(value)
        end
        define_method "#{name}_is_real?" do
          send(name).exists?
        end
        define_method "#{name}_contains_text" do |text|
          send(name).text.include? text
        end
        define_method "#{name}_click" do
          send(name).click
        end
        define_method "#{name}_get_text" do
          send(name).text
        end
      end

     include CheckboxHelper
     include TextfieldHelper
     include SelectHelper
     include DivHelper
     include RadioHelper
     include LinkHelper
     include ButtonHelper
     include SpanHelper
     include HiddenHelper

    end
  end
end
