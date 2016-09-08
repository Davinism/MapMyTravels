@trips.each do |trip|
  json.set! trip.id do
    json.id trip.id
    json.title trip.title
    json.author_id trip.author_id
    json.route_id trip.route_id
    json.start_date trip.start_date
    json.end_date trip.end_date
    json.created_at trip.created_at
    json.updated_at trip.updated_at
    json.expenditure trip.expenditure
    json.author_name "#{trip.author.first_name} #{trip.author.last_name}"
    json.route_polyline trip.route.polyline
    json.route_distance trip.route.distance
    json.log trip.log
    json.author_profile_picture trip.author.profile_picture
  end
end
