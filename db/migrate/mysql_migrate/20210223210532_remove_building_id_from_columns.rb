class RemoveBuildingIdFromColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :columns, :BuildingId, :integer
  end
end
