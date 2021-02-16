class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.column :first_name, :string, :limit => 35
      t.column :last_name, :string, :limit => 40
      t.column :email, :string, :limit => 250
      t.column :password, :string, :limit => 45
      t.column :birthday , : DATE
  end
end
