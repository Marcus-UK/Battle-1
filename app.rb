require 'sinatra/base'
require './lib/player.rb'
class Battle < Sinatra::Base

enable :sessions

set :session_secret, 'super secret'

get '/' do
  erb :index
end

post '/names' do
  $player_1 = Player.new(params[:Player1])
  $player_2 = Player.new(params[:Player2])
  redirect '/play'
end

get '/play' do
  @player1 = $player_1
  @player2 = $player_2
  erb :play
end

get '/attack' do
  @player1 = $player_1
  @player2 = $player_2
  Game.new.attack(@player2)
  erb :attack
end

# start the server if ruby file executed directly
  run! if app_file == $0

end
