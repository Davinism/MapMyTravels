class CreateFriendTaggings < ActiveRecord::Migration
  def change
    create_table :friend_taggings do |t|
      t.integer :user_id, null: false
      t.integer :friend_id, null: false

      t.timestamps null: false
    end

    add_index :friend_taggings, :user_id
    add_index :friend_taggings, :friend_id
  end
end
