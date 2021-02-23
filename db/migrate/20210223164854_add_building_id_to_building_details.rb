class AddBuildingIdToBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :building_details, :building_id, :integer
    add_index :building_details, :building_id
  end
end
