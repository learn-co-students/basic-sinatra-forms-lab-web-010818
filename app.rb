require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    status 200

    erb :newteam
  end

  post '/team' do

    erb :team
  end
end
