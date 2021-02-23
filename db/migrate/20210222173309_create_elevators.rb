class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.column :ColumnId, :integer 
      t.column :Serial_number, :string, :limit => 100   
      t.column :Model, :string, :limit => 255
      t.column :Type, :string, :limit => 255
      t.column :Status, :string, :limit => 255 
      t.column :Date_of_commissioning, :date
      t.column :Date_of_last_inspection, :date
      t.column :Certificate_of_inspection, :string, :limit => 255 
      t.column :Information, :string, :limit => 500
      t.column :Notes, :string, :limit => 500

      t.timestamps
    end
  end
end
