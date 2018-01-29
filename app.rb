require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end


  # post '/newteam' do
  #   @team_hash = {}
  #   @team_hash = params.delete_if {|k,v| k == "submit"}
  #   erb :team
  # end

  # get '/newteam' do
  #   erb :newteam
  # end
  #
  post '/newteam' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]
    erb :team
  end

  get '/team' do
    erb :team
  end

  post '/team' do
    @team_hash = {}
    @team_hash = params.delete_if {|k,v| k == "submit"}
    erb :team
  end

  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]
    erb :team
  end
end
