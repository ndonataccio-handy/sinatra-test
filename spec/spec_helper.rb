ENV['RACK_ENV'] = 'test'

require_relative File.join('../config/sinatra', 'application.rb')

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    Server
  end
end
