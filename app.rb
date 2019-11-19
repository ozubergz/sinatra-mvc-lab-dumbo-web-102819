require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        # binding.pry
        input = PigLatinizer.new
        "#{input.piglatinize(params[:user_phrase])}"
    end

end