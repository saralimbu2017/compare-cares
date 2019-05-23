require 'sinatra'
require 'pry'
require 'sinatra/reloader'
require 'bcrypt'
require_relative 'db_config'
require_relative 'models/aged_care'
require_relative 'models/aged_care_service'
require_relative 'models/service'
require_relative 'models/user'
require_relative 'routes/listings'
<<<<<<< HEAD
require_relative 'routes/details'
=======
require_relative 'routes/compare'



>>>>>>> listing updated
enable :sessions

get '/agedcares' do
  erb :agedcares
end

get '/services' do
  @services = Service.all
  erb :services
end

post '/services' do
  agedcare = AgedCare.new
  agedcare.name = params[:name]
  agedcare.location = params[:location]
  agedcare.cost = params[:cost]
  agedcare.user_id = current_user.id
  agedcare.save

  rating = 0
  services = params["service"]
  services.each do |name, id|
    aged_care_service = AgedCareService.new
    @aged_care_service.aged_care_id = agedcare.id
    aged_care_service.service_id = Service.find_by(name: name ).id
    aged_care_service.save
    rating = rating + 1

    
  end
  agedcare.rating = rating
  agedcare.save
  redirect '/'
end

get '/services/:id' do
  @agedcares = AgedCare.find(params[:id])
  erb :services_listing 
end

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
  user = User.new
  user.email = params[:user_email]
  user.password = params[:user_password]
  user.save
  @services = Service.all
  erb :services
end

get '/login' do
  erb :login
end

get '/agedcares' do
  erb :agedcares
end

post '/session' do
  user = User.find_by(email:params[:user_email])
  if user && user.authenticate(params[:user_password])
    session[:user_id] = user.id
    @services = Service.all
    erb :services
  else
    erb :login
  end
  # @services = Service.all
  # erb :services
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




