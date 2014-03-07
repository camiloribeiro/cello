require File.join(File.dirname(__FILE__), './cello/version')
require 'rubygems'
require 'bundler/setup'

#common dependencies
require 'selenium-webdriver'
require 'watir-webdriver'
require 'cucumber'

#internal dependences
require File.join(File.dirname(__FILE__), './cello/pageobjects/page')
require File.join(File.dirname(__FILE__), './cello/pageobjects/browser')
require File.join(File.dirname(__FILE__), './cello/pageobjects/recorder')

# commands
require 'cello/commands'
require File.join(File.dirname(__FILE__), './cello/commands/main')
require File.join(File.dirname(__FILE__), './cello/commands/help')
require File.join(File.dirname(__FILE__), './cello/commands/version')

module Cello
end
