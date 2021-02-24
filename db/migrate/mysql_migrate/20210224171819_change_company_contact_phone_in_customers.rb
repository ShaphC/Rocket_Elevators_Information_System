class ChangeCompanyContactPhoneInCustomers < ActiveRecord::Migration[5.2]
  def change
    change_column :customers, :company_contact_phone, :string
  end
end
