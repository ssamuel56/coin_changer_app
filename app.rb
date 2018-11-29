require 'sinatra'
require_relative 'coin_changer.rb'

get '/' do
  erb :home
end

post '/change' do
change = params[:change]
redirect 'coins?change=' + change
end

get '/coins' do
  change = params[:change].to_i
  change = coinify_loop(change)
  erb :change, locals: {change: change}
end
