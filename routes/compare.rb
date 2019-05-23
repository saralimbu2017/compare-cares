
get '/compare' do
  #@ids_selected = params["ids_selected"].split(',')
  @aged_cares = AgedCare.all
  erb :compare, :layout => :layout_compare
end
