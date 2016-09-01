class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :author_id, null: false
      t.float :distance , null: false
      t.string :coordinates, array: true, default: [], null: false

      t.timestamps null: false
    end

    add_index :routes, :author_id, unique: true
  end
end
