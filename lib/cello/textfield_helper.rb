module Cello
  module Structure
    module TextfieldHelper
      def define_extras_for_text_field(name)
        define_method "#{name}_clear" do
          send(name).clear
        end
        define_method "#{name}_get_text" do
          send(name).text
        end
        define_method "#{name}_fill_with" do |text|
          send(name).set text
        end
        define_method "#{name}_dont_contain" do |text|
          !(send(name).text.include? text)
        end
        define_method "#{name}_contains" do |text|
          send(name).text.include? text
        end
        define_method "#{name}_text_is" do |text|
          send(name).text == text
        end
        define_method "#{name}_is_empty?" do 
          send(name).text.empty?
        end
        define_method "#{name}_text_size" do 
          send(name).text.size
        end
      end
    end
  end
end
