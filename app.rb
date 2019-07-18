require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    pl = PigLatinizer.new
    @latinized_str = pl.piglatinize(params[:user_phrase])

    erb :results
  end

end