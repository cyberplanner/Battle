require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/player_names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1: player_1 , player_2: player_2  )
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @attacker = @game.attacker
    @defender = @game.defender
    @game.attack(@game.defender)
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end