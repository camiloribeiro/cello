require 'fileutils'

class Cello::Structure::NewProject
  class << self
    def create
      FileUtils.mkpath "./features/step_definitions"
      FileUtils.mkpath "./features/support"
      FileUtils.mkpath "./features/pages"
    end
  end
end
