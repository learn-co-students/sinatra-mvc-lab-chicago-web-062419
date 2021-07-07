require_relative 'config/environment'

class App < Sinatra::Base
    
    post '/piglatinize' do
        erb :user_input
    end

    get '/' do
       erb :index 
    end

end
#* [aeiou] or, a, or e, or i, or o, or u is a basic expression to match any vowel. If we follow it with \w* or, 0 or more Word characters we should be able to capture whole words. Once captured, we simply need to replace a word with itself followed by "way"
# word.gsub!( /\b([aeiou]\w*)\b/, '\1way' )
