require_relative '../models/comedian.rb'

class LaughTracksApp < Sinatra::Base
    set :root, File.expand_path("..", __dir__)
    set :method_override, true

    get '/comedians' do
        if params[:age]
            @comedians = Comedian.where(age: params[:age])
          else
            @comedians = Comedian.all
        end
        erb :'comedians/index'
    end

end
