require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end 

    post "/piglatinize" do 
        phrase = params[:user_phrase]
        translate = PigLatinizer.new
        @converted = translate.piglatinize(phrase)
        erb :finished
    end





end