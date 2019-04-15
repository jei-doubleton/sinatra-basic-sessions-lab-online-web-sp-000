require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    set :sessions, true
    set :session_secret, 
  end
end