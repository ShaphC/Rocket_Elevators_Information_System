class CreateDimCustomers < ActiveRecord::Migration[5.2]
    def change
      create_table :dim_customers do |t|
        t.date :creation_date
        t.string :company_name
        t.text :main_contact_name
        t.string :main_contact_email
        t.integer :nb_elevators
        t.string :customer_city
        t.timestamps
      end
  
      create_table :fact_elevators do |t|
        t.string :serial_number
        t.date :date_of_commissioning
        t.integer :building_id
        t.integer :customer_id
        t.string :building_city
        t.timestamps
      end
    end
end