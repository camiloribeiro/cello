require 'rspec'
require 'coveralls'

Coveralls.wear!
  
RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end
