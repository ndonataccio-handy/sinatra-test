ENV['RACK_ENV'] ||= 'development'

require 'bundler'

Bundler.setup
Bundler.require(:default, ENV['RACK_ENV'])

require_relative 'environment'

ActiveRecord::Base.logger = Logger.new(File.open('log/database.log', 'a'))

require_relative(*Dir.glob(File.join(Server.root, 'app/routes/**')))
