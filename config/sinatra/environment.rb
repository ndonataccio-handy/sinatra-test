class Server < Sinatra::Base
  configure do
    set :root, File.expand_path('../../', File.dirname(__FILE__))
    register Sinatra::ActiveRecordExtension
    enable :logging, :static, :sessions
  end

  configure :development, :test do
    show_exceptions
    enable :dump_errors, :raise_errors
    set(:database_file, File.join(Server.root, 'config/sinatra/database.yml'))
  end

  configure :production do
  end
end
