require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text_input = params[:user_phrase]
    to_pl = PigLatinizer.new
    @piglatinized = to_pl.piglatinize(text_input)

    erb :piglatinize
  end

end
