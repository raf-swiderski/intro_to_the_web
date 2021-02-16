require 'sinatra'
#configure(:development) { set :session_secret, “something” }
require 'shotgun'

get '/' do
  'hello!'
end

get '/secret' do
  'Rafaelsdfgyuiuhgfdx'
end

get '/numbers' do
  '123456789'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end
