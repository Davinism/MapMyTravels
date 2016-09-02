class AddProfilePictureUrl < ActiveRecord::Migration
  def change
    add_column :users, :profile_picture, :string, default: "http://res.cloudinary.com/davinkim93/image/upload/v1472774509/default_iall0v.jpg", null: false
  end
end
