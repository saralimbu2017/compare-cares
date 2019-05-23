get '/listings' do
  erb :listings, :layout => :layout_listings

end

post '/listings' do 
  @location = params['location']
  agecares= AgedCare.all
  if(@location == 'North')
    # // show all north agecars
  elsif @location == "South"
    # ///show all the south agecares
  else
    # // show no results
  end
  erb :listings

end