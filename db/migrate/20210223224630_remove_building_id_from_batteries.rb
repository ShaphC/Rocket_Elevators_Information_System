class RemoveBuildingIdFromBatteries < ActiveRecord::Migration[5.2]
  def change
    remove_column :batteries, :BuildingId, :integer
  end
end
