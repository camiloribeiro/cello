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

module Cello
  def self.get_page_object url
    recorder = Recorder.new
    recorder.get_elements url
  end

  def self.version
    puts Cello::VERSION
  end
end
