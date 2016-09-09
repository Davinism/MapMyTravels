json.extract! comment, :body, :id, :created_at
json.author_picture comment.author.profile_picture
json.author_name "#{comment.author.first_name} #{comment.author.last_name}"
