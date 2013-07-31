require 'sinatra/base'
require 'sinatra/flash'
require_relative 'routes/init'

class MyApp < Sinatra::Base
  register Sinatra::Flash

  enable :method_override
  enable :sessions

  configure do
    set :app_file, __FILE__
    set :show_production, false
  end

  configure :development do
    enable :logging, :dump_errors, :raise_errors
  end

  configure :production do
    set :raise_errors, false 
    set :show_exceptions, false 
  end
end