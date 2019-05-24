get '/details/:id' do
  



  # How to turn the sql into ActiveRecord?
  # sql = "select b.name, b.location, b.cost, c.name
  # from aged_care_services a
  # join aged_cares b          on a.aged_care_id = b.id
  # join services c            on a.service_id = c.id
  # where a.aged_care_id = #{params[:id]}"

  # @aged_care_services = ActiveRecord::Base.connection.execute(sql).values
  # p @aged_care_services
  # erb :details, :layout => :layout_details

  @id = params[:id]
  @aged_care = AgedCare.find(@id)


  location = @aged_care.location
  result = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{location}&key=AIzaSyANtLu9KmXGf5z0QgIat959tt-7agUDm4g")
  position = result["results"].first["geometry"]["location"] 
  # hash contain lat and lon
  @lat = position['lat']
  @lng = position['lng']
 

  erb :details, :layout => :layout_details


end

