get '/compares' do
  @aged_cares = AgedCare.all
  erb :compare_graph, :layout => :layout_compare_graph
end

post '/compares' do
  @aged_cares= [];
  @ids_selected = params["ids_selected"].split(',')
  @ids_selected.each do |id|

    @aged_cares << AgedCare.find(id.to_i)

  end
  erb :compare_graph, :layout => :layout_compare_graph

end
               