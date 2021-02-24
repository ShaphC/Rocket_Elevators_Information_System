class ChangeAddressIdColumnInBuilding < ActiveRecord::Migration[5.2]
  def change
    rename_column :buildings, :addresses_id, :address_id
  end
end
