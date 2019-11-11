require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
		erb :user_input
  end
  
  post '/piglatinize' do
    erb :piglatinize
    input = params["user_phrase"].to_s
    @new_string = PigLatinizer.new.piglatinize(input)
  end
end
