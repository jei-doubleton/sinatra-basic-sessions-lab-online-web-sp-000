require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    set :sessions, true
    set :session_secret, SecureRandom.hex(64)
  end
end
