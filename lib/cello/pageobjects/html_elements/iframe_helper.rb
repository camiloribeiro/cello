module Cello
  module PageObjects
    module IframeHelper
      def define_extras_for_iframe(name)
        define_method "#{name}" do
          send(name)
        end
      end
    end
  end
end
