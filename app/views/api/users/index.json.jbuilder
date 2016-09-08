@users.each do |user|
  json.set! user.id do
    json.name "#{user.first_name} #{user.last_name}"
    json.profile_picture user.profile_picture
  end
end
