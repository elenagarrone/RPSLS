require 'sinatra/base'

class RPSLS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    @player = params[:player]
    session[:player] = @player
    erb :"/game"
  end

  post '/results' do
    @weapon = params[:weapon]
    @player = session[:player]
    puts @player
    erb :"/results"
  end

  run! if app_file == $0
end
