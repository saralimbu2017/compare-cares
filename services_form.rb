require_relative 'models/service'
require_relative 'models/aged_care'

get '/services' do
  @services = Service.all
  erb :services
end

post '/services' do
  agedcare = AgedCare.new
  agedcare.name = params[:name]
  agedcare.location = params[:location]
  agedcare.cost = params[:cost]
  agedcare.save

  services = params["service"]
  services.each do |name,id|
  aged_care_service = AgedCareService.new
  aged_care_service.aged_care_id = agedcare.id
  aged_care_service.service_id = Service.find_by(name: name ).id
  aged_care_service.save
  end
end

  

  # loop through all service- params and create a aged care service for each one
  # where the aged care id is from saved aged cares and services id comes from
  # the corresponding param value
  # also increase score by 1 to calculate and update rating and save
  # save them all
  # redirect to '/services/:id'
end

get '/services/:id' do
  @agedcares = AgedCare.find(params[:id])
  if 
  # view the saved aged care info
  
  erb :services_listing 

end


