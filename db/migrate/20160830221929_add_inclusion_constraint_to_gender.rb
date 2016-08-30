class AddInclusionConstraintToGender < ActiveRecord::Migration
  def change
    change_column :users, :gender, :string, inclusion: { in: ["M", "F"] }
  end
end
