get '/details/:id' do
  
  # How to turn the sql into ActiveRecord?
  sql = "select b.name, b.location, b.cost, c.name
  from aged_care_services a
  join aged_cares b          on a.aged_care_id = b.id
  join services c            on a.service_id = c.id
  where a.aged_care_id = #{params[:id]}"

  @aged_care_services = ActiveRecord::Base.connection.execute(sql).values
  erb :details, :layout => :layout_details
end

get '/search' do
  @age_cares = AgedCare.where(location: params[:suburb_name])
end  