require_relative 'models/service'
require_relative 'models/aged_care'

get '/services' do
  @services = Service.all
  erb :services
end

post '/services' do
  agedcares = AgedCare.new
  agedcares.name = params[:name]
  agedcares.location = params[:location]
  agedcares.cost = params[:cost]
  agedcares.save

  # loop through all service- params and create a aged care service for each one
  # where the aged care id is from saved aged cares and services id comes from
  # the corresponding param value
  # also increase score by 1 to calculate and update rating and save
  # save them all
  # redirect to '/services/:id'
end

get '/services/:id' do
  @agedcares = AgedCare.find(params[:id])
  # view the saved aged care info
  erb :services_listing 

end


