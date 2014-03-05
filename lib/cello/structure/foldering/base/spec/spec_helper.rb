require "cello"
require 'rspec'
require 'simplecov'

SimpleCov.command_name 'test:units'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end
