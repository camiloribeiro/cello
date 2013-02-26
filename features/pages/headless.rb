require "cello"

module StaticPages
  module Site
    class Phantom < Cello::Structure::Browser
      def initialize
        super :phantomjs
      end
    end
  end
end
