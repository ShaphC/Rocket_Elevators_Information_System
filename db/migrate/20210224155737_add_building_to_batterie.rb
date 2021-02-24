class AddBuildingToBatterie < ActiveRecord::Migration[5.2]
  def change
    add_reference :batteries, :Building, foreign_key: true
  end
end
