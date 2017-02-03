require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/about.html' do
  "This page doesn't work yet! Go to the bottom of the home page to try out the app."
  end

post '/results' do
  user_input=params[:mode]
  @result=find_games(user_input)
  #[array of links]
  @link1=@result[0]
  @link2=@result[1]
  @link3=@result[2]
  @link4=@result[3]
  @link5=@result[4]
  @link6=@result[5]
  @link7=@result[6]
  @link8=@result[7]
  @link9=@result[8]
  @link10=@result[9]
  @link11=@result[10]
  @link12=@result[11]
  erb :results
end
end