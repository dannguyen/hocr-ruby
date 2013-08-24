$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'hocr-ruby'
require 'pry'
# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

include HocrRuby

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  config.formatter = :documentation # :progress, :html, :textmate

  config.before(:each) do
  end

  config.after(:each) do
  end
end

SPEC_FIXTURES = File.expand_path('../fixtures', __FILE__)