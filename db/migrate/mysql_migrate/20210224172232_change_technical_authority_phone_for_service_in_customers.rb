class ChangeTechnicalAuthorityPhoneForServiceInCustomers < ActiveRecord::Migration[5.2]
  def change
    change_column :customers, :technical_authority_phone_for_Service, :string
  end
end
