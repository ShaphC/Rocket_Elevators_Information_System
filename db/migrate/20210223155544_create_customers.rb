class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.date :customer_s_creation_date
      t.string :company_name
      t.string :full_name_of_the_company_contact
      t.integer :company_contact_phone
      t.string :email_of_the_company_contact
      t.text :company_description
      t.string :full_name_of_service_technical_authority
      t.integer :technical_authority_phone_for_Service
      t.string :technical_manager_email_for_service

      t.timestamps
    end
  end
end
