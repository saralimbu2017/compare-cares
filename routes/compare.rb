get '/compare' do
  #@ids_selected = params["ids_selected"].split(',')
  @aged_cares = AgedCare.all
  erb :compare, :layout => :layout_compare
end

post '/compare' do
  @aged_cares= [];
  @ids_selected = params["ids_selected"].split(',')
  @ids_selected.each do |id|

    @aged_cares << AgedCare.find(id.to_i)

  end
  erb :compare, :layout => :layout_compare

end