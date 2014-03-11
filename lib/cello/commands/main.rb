class Cello::Commands::Main

  class << self

    def run(args=ARGV)
      cmd = args.shift

      case cmd
      when "-h", "--help", NilClass
        Cello::Commands::Help.run
        exit 0
      when "-v", "--version", "version"
        Cello::Commands::Version.run
        exit 0
      end

      unless system("cello #{cmd}", *args)
        if $?.exitstatus == 127 # bash 'command not found'
          puts "Unknown subcommand #{cmd.inspect}"
          Cello::Commands::Help.run
          exit 127
        end
      end
    end
  end
end