class ChangeDefaultProfilePicture < ActiveRecord::Migration
  def change
    change_column :users, :profile_picture, :string, default: "http://res.cloudinary.com/davinkim93/image/upload/c_scale,w_1800/v1472774509/default_iall0v.jpg"
  end
end
