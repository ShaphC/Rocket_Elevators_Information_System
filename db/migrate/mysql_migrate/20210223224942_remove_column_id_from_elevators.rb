class RemoveColumnIdFromElevators < ActiveRecord::Migration[5.2]
  def change
    remove_column :elevators, :ColumnId, :integer
  end
end
