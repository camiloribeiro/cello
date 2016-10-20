require File.join(File.dirname(__FILE__), './cello/version')
require 'bundler/setup'

#common dependencies
require 'watir'
require 'cucumber'

#Modules
require File.join(File.dirname(__FILE__), './cello/structure')
require File.join(File.dirname(__FILE__), './cello/commands')


#internal dependences
require File.join(File.dirname(__FILE__), './cello/pageobjects/page')
require File.join(File.dirname(__FILE__), './cello/pageobjects/iframe')
require File.join(File.dirname(__FILE__), './cello/pageobjects/browser')
require File.join(File.dirname(__FILE__), './cello/pageobjects/hub')
require File.join(File.dirname(__FILE__), './cello/pageobjects/recorder')

require File.join(File.dirname(__FILE__), './cello/structure/new_project')

# commands
require 'cello/commands'
require File.join(File.dirname(__FILE__), './cello/commands/main')
require File.join(File.dirname(__FILE__), './cello/commands/help')
require File.join(File.dirname(__FILE__), './cello/commands/version')
require File.join(File.dirname(__FILE__), './cello/commands/new_project')
require File.join(File.dirname(__FILE__), './cello/commands/new_page')
require File.join(File.dirname(__FILE__), './cello/commands/debug')

module Cello
end
