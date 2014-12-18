require 'sinatra/base'
require_relative 'player'
require_relative 'game'


class RPSLS < Sinatra::Base

  GAME = Game.new

  enable :sessions
  set :public_folder, Proc.new{ File.join(root, '..', 'public')}

  get '/' do
    erb :index
  end

  post '/game' do
    session[:player] = params[:player]
    GAME.player = Player.new(session[:player])
    redirect to '/game'
  end

  get '/game' do
    @player = session[:player]
    erb :game
  end

  post '/results' do
    GAME.player.weapon = params[:weapon]
    @player = session[:player]
    redirect to '/results'
  end

  get '/results' do
    GAME.results
    @winner = GAME.winner
    @player = session[:player]
    @weapon = GAME.player.weapon
    @computer = GAME.computer_choice
    erb :results
  end

  run! if app_file == $0
end
