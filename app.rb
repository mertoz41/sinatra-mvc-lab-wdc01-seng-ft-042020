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


    get "/nato" do
        erb :user_input
    end

    post "/nato" do
        word = params[:user_phrase]
        phrase = PigLatinizer.new
        @nato = phrase.nato(word)
        erb :finished
    end


        





end