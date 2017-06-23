def nearest_possible_neighbor(graph_of_cities, current_city)
  while current_city.visited == false
    current_city.neighbors = neighbor_cities
    next_city = neighbor_cities[0]

  	neighbor_cities.each do |current_neighbor|
  		if current_neighbor.distance < next_city.distance
  			next_city = current_neighbor
  		end
  	end
  	current_city.visited = true
  	next_city = current_city
  end
end
