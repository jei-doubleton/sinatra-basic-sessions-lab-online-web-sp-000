require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    set :sessions, true
    set :session_secret, SecureRandom.hex(64)
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
  end
end
