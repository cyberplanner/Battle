require 'sinatra/base'
require_relative './lib/player'
class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do

    $player1 = params[:Player1]
    $player2 = params[:Player2]
    redirect '/play'

  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @player_1_name = $player1
    @player_2_name = $player2
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
