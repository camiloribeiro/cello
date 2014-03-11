class Cello::Commands::NewProject
  class << self
    def run(args=ARGV)
      Cello::Structure::NewProject.create
    end
  end
end

