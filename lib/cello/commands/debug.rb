require "cello" 

class Cello::Commands::Debug
  class << self
    def run
      Dir["./features/support/browsers/*.rb"].each {|file| require file }
      Dir["./features/pages/*.rb"].each {|file| require file }
      require "pry"; binding.pry
    end
  end
end
