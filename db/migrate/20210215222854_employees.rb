class Employees < ActiveRecord::Migration[5.2]
  # def change
  # end
  def self.up
    create_table :employees do |t|
      #  t.column :user_id, :int :limit => 32, :null => false (not sure if needed, docs say id will be created automatically)
       t.column :first_name, :string
       t.column :last_name, :string
       t.column :title, :string
      #  t.column :email, :string
    end
 end

 def self.down
    drop_table :employees
 end
end
