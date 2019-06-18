require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  get '/customer_session' do
    @session = session
  end

  post '/checkout' do
    puts @session[session_id]
  end



end
