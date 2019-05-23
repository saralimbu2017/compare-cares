

get '/listings' do
  erb :listings, :layout => :layout_listings

end

post '/listings' do 
  @location = params['location']# north mel

  @agecares = AgedCare.where(location: @location)

    # // show all agecares at certain location
 
  erb :listings,:layout => :layout_listings

end