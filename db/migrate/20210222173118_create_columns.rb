class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.column :BuildingId, :integer
      t.column :Type, :string, :limit => 255
      t.column :Number_of_floors, :integer 
      t.column :Status, :string, :limit => 255
      t.column :Information, :string, :limit => 500
      t.column :Notes, :string, :limit => 500

      t.timestamps
    end
  end
end

 

