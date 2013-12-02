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

module Cello
end
