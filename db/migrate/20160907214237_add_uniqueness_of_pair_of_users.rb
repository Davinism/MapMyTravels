class AddUniquenessOfPairOfUsers < ActiveRecord::Migration
  def change
    add_index :friend_taggings, [:user_id, :friend_id], unique: true
  end
end
