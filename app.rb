require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do

    session['player1'] = params[:Player1]
    session['player2'] = params[:Player2]
    redirect '/play'

  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @player_1_name = session['player1']
    @player_2_name = session['player2']
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
