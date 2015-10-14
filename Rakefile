require 'sinatra/activerecord/rake'

namespace :sinatra do
  task :load_config do
    require_relative 'config/sinatra/application.rb'
  end
end

namespace :db do
  task load_config: 'sinatra:load_config'
end
