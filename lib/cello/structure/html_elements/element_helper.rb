Dir[File.dirname(__FILE__) + "/*.rb"].each do |file| 
  require file 
end

module Cello
  module Structure
    module ElementHelper
      
      private

      def element(name, type, *args)        
        class_eval do
          define_method name do
            engine.browser.send(type, *args)
          end

          #define_extras(name, type)
          define_extras(name, type)
        end

      end

      def define_extras(name, type)
        include LogHelper
        
        define_method "#{name}_exit_wait?" do
            send(name).visible? 
        end

        define_method "#{name}_is_enable?" do
          logger(name, __method__, type) {
            send(name).enabled? 
          }
        end
        define_method "#{name}_is_real?" do
          logger(name, __method__, type, "Foo") {
            send(name).exists?        
          }
        end
        define_method "#{name}_click" do
          logger(name, __method__, type) {
#            require "pry"; binding.pry
            send(name).click
          }
        end
        define_method "#{name}_is_visible?" do
          logger(name, __method__, type) {
            send(name).visible?
          }
        end
        define_method "#{name}_right_click" do
          logger(name, __method__, type) {
            send(name).right_click
          }
        end

        define_method "#{name}_get" do |att|
          logger(name, __method__, type) {
            send(name).attribute_value(att)
          }
        end

        method_name = "define_extras_for_#{type}"
        send(method_name, name) if respond_to? method_name
      end
      

     include CheckboxHelper
     include TextfieldHelper
     include TextareaHelper
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
