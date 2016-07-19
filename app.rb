require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do

    session['value1'] = params[:Player1]
    session['value2'] = params[:Player2]
    session['p2hitpoints'] = 10
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
