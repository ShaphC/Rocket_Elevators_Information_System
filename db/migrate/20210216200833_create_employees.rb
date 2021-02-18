class CreateEmployees < ActiveRecord::Migration[5.2]
    def self.up
      create_table :employees do |t|
        t.column :first_name, :string
        t.column :last_name, :string
        t.column :title, :string
        t.column :email, :string
      end
   end
  
   def self.down
      drop_table :employees
   end
  end