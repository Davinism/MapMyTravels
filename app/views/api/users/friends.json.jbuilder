@friends.each do |friend|
  json.set! friend.id do
    json.name "#{friend.first_name} #{friend.last_name}"
    json.profile_picture friend.profile_picture
    json.id friend.id
  end
end
