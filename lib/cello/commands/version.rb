class Cello::Commands::Version
  class << self
    def run(args=ARGV)
      puts "cello version #{Cello::VERSION}"
    end
  end
end
