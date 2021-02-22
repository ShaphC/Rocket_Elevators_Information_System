class CreateDimCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_customers do |t|
      t.date :CreationDate
      t.string :CompanyName
      t.text :MainContactName
      t.string :MainContactEmail
      t.integer :NbElevators
      t.string :CustomerCity
      t.timestamps
    end
  end
end
