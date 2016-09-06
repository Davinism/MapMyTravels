# @routes.each do |route|
#   json.set! route.id do
#     json.partial! 'route', route: route
#   end
# end

@routes.each do |route|
  json.set! route.id do
    json.id route.id
    json.name route.name
    json.description route.description
    json.author_id route.author_id
    json.author_name "#{route.author.first_name} #{route.author.last_name}"
    json.distance route.distance
    json.coordinates route.coordinates
    json.polyline route.polyline
  end
end
