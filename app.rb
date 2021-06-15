require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base
    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do
        pl = PigLatinizer.new
        @piglatin = pl.piglatinize(params[:regword])
        erb :pigview
      end

end
end 