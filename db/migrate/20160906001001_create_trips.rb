class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title, null: false
      t.integer :author_id, null: false
      t.integer :route_id, null: false
      t.string :start_date, null: false
      t.string :end_date, null: false

      t.timestamps null: false
    end

    add_index :trips, :author_id
    add_index :trips, :route_id
  end
end
