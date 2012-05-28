require File.join(File.dirname(__FILE__), '../../lib/cello/page')

module StaticPages
  module Site
    class InputPage < Cello::Structure::Page
      element :text_field,  :text_field, :id => 'text1'
      element :text_field,  :text_field, :name => 'text1'
      element :text_field,  :text_field, :id => 'text1'

      @@url = 'file://' + File.dirname(__FILE__) + '/../site/inputs.html'
      def initialize
        super(@@url)
      end
    end
  end
end
