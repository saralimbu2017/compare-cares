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

<<<<<<< HEAD
=======
helpers do

  def current_user
    User.find_by(id:session[:user_id])
  end 

  def logged_in?
    if current_user
      return true
    else
      return false
    end
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

post '/signup' do
  erb :services
end

get '/login' do
  erb :login
end

>>>>>>> signup and login updated
get '/agedcares' do
  erb :agedcares
end

get '/listings' do

  erb :listings
end

post '/session' do
  user = User.find_by(email:params[:user_email])
  if user && user.authenticate(params[:user_password])
    session[:user_id] = user.id
    erb :services
  else
    erb :login
  end
end

delete '/session' do
 
  session[:user_id] = nil
  redirect "/login"
end


get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end


<<<<<<< HEAD
after do
  ActiveRecord::Base.connection.close
end 
=======
>>>>>>> signup and login updated


get '/' do
  erb :index
end

get '/signup' do
  erb :signup
end

get '/login' do
  erb :login
end




