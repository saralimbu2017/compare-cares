require 'sinatra'
require 'pry'
require 'sinatra/reloader'
require 'bcrypt'

enable :sessions

get '/' do
  erb :index
end

get '/signup' do
  erb :signup
end

get '/login' do
  erb :login
end


helpers do

  def current_user
    

  end 
  def logged_in?

  end
end


after do
 ActiveRecord::Base.connection.close
end 






