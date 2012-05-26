require File.join(File.dirname(__FILE__), "../../../lib/pages/page")

module BugBang
  class HomePage < Cello::Structure::Page
    element :search_field,  :text_field, :id => "s"
    element :search_button,  :button, :id => "go"
    element :about_page_button, :span, :text => "Sobre o Autor"

    def initialize(url)
      super(url)
    end

  end

  class SearchResultPage < Cello::Structure::Page
    def initialize(url)
      super(url)
    end
  end
  
  class AboutPage < Cello::Structure::Page
    def initialize(url)
      super(url)
    end
  end
end

