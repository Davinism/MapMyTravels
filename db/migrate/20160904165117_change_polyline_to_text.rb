class ChangePolylineToText < ActiveRecord::Migration
  def change
    change_column :routes, :polyline, :text, null: false, default: ""
  end
end
