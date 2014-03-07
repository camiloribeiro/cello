class Cello::Commands::Help

  def self.run
    puts <<-HELP
Usage: cello <command> [options*]

cello version #{Cello::VERSION}: Cucumber Page-Object integration made easy

  Available commands:

    help              Show this help text
    
    -nP, --new-project       Creates the structure of a cello project  
    -np, --new-page          Curl the page and creates the page object for that url
    -nf, --new-feature       Creates a new feature file and its step definition

    -r,  --run-tests         Runs all the tests
    -w,  --run-wip           Runs all the tests
    
    -d,  --debbug            Runs all the tests
      
    --version, -v:   Print version and exit
    --help, -h:   Show this message

    For more support read our api >> http://rubydoc.info/gems/cello
    Have a nice day :)
    HELP
  end
end
