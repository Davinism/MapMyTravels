class AddPolylineToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :polyline, :string, null: false, default: ""
  end
end
