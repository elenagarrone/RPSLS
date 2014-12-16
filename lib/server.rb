require 'sinatra/base'

class RPSLS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    @player = params[:player]
    session[:player] = @player
    erb:"/game"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
