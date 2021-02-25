class RemoveEmployeeIdFromBatterie < ActiveRecord::Migration[5.2]
  def change
    remove_column :batteries, :EmployeeId, :integer
  end
end
