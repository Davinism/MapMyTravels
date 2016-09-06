class AddLogToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :log, :text, null: false, default: ""
  end
end
