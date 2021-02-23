class AddCustomerIdToBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :buildings, :customer_id, :integer
    add_index :buildings, :customer_id
  end
end
