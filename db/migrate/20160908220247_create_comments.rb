class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :author_id, null: false
      t.integer :trip_id, null: false
      t.text :body, null: false

      t.timestamps null: false
    end

    add_index :comments, :author_id
    add_index :comments, :trip_id
  end
end
