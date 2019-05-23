get '/compares' do
  @aged_cares = AgedCare.all
  erb :compare_graph, :layout => :layout_compare_graph
end
               