require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        set :views, "views"
    end

    get "/" do 
        erb :index
    end

    post "/piglatinize" do
        @pl = PigLatinizer.new

        erb :piglatinize
    end 
end