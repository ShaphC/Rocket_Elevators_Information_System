class ChangeAddressIdColumnInCustomer < ActiveRecord::Migration[5.2]
  def change
    rename_column :customers, :addresses_id, :address_id
  end
end
