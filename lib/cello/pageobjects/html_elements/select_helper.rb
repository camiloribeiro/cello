module Cello
  module PageObjects
    module SelectHelper
      def define_extras_for_select(name)
        include LogHelper

        define_method "#{name}_get_options" do
          logger(name, __method__, :select) {
            options = Array.new
            send(name).options.each do |option|
              options.push option.text
            end
            options
          }
        end
        define_method "#{name}_select" do |option|
          logger(name, __method__, :select) {
            send(name).select option
          }
        end
        define_method "#{name}_is" do |option|
          logger(name, __method__, :select) {
            send(name).selected_options.last.text == option
          }
        end
        define_method "#{name}_selected" do
          logger(name, __method__, :select) {
            send(name).selected_options.last.text
          }
        end
      #  define_method "#{name}_clear" do
      #    send(name).clear
      #  end
      end
    end
  end
end
