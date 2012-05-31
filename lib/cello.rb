require 'cello/version'
require 'rubygems'
require 'bundler/setup'

#common dependencies
require 'selenium-webdriver'
require 'watir-webdriver'
require 'cucumber'

#internal dependences
require File.join(File.dirname(__FILE__), './cello/structure/page')

module Cello
end
