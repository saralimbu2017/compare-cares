require 'sinatra'
require 'pry'
require 'sinatra/reloader'
require 'bcrypt'
require_relative 'db_config'
require_relative 'models/aged_care'
require_relative 'models/aged_care_service'
require_relative 'models/service'
require_relative 'models/user'

enable :sessions

get '/agedcares' do
  erb :agedcares
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


get '/' do
  erb :index
end

get '/signup' do
  erb :signup
end

get '/login' do
  erb :login
end




