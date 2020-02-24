require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input 
  end 
  
  post '/piglatinize' do 
    @text = params[:user_phrase].to_s 
    @piglatinizer = PigLatinizer.new 
    erb:piglatin 
  end 
  
end