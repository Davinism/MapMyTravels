class FixRoutesIndex < ActiveRecord::Migration
  def change
    remove_index :routes, :author_id
    add_index :routes, :author_id
  end
end
