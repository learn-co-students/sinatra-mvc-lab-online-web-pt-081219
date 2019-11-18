require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # binding.pry
    pl = PigLatinizer.new
    @p = pl.piglatinize(params[:user_phrase])
  end
end
