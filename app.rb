require 'sinatra'
require_relative 'coin_changer.rb'

get '/' do
  erb :home
end

post '/change' do
change = params[:change]
redirect 'coins?change=' + change
end
