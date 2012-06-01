require File.join(File.dirname(__FILE__), '../../lib/cello')

module StaticPages
  module Site
    class InputPage < Cello::Structure::Page
      element :text_field,  :text_field, :id => 'text1'
      element :text_fieldname,  :text_field, :name => 'text1'
      element :text_fieldxpath,  :text_field, :xpah, '//*[@id="text1"]'
      element :checkbox,  :checkbox, :id => 'check1'
      element :textarea,  :textarea, :id => 'area1'
      element :radios,  :radios, :name => 'items'

      @@url = 'file://' + File.dirname(__FILE__) + '/../site/inputs.html'
      def initialize
        super(@@url)
      end
    end
  end
end
