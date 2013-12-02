require File.join(File.dirname(__FILE__), '../../../lib/cello/pageobjects/page')

module BugBang
  class HomePage < Cello::PageObjects::Page
    element :search_field,  :text_field, :id => 's'
    element :search_button,  :button, :id => 'go'
    element :about_page_button, :span, :text => 'Sobre o Autor'
    element :last_twelve_Posts, :div, :text => 'Ultimos 20 posts'

    @@url = 'http://bugbang.com.br/'
    def initialize
      super(@@url)
    end
  end

    class SearchResultPage < Cello::PageObjects::Page
    def initialize
      super(@@url)
    end
  end
  
  class AboutPage < Cello::PageObjects::Page
    def initialize
      super(@@url)
    end
  end
end
