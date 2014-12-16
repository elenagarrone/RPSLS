require 'sinatra/base'

class RPSLS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/game' do
    erb :"/game"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
