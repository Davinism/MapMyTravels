class AddExpenditureToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :expenditure, :float, null: false
  end
end
