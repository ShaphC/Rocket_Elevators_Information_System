class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.column :BuildingId, :integer 
      t.column :Type, :string, :limit => 100   
      t.column :Status, :string, :limit => 255
      t.column :EmployeeId, :string, :limit => 255 
      t.column :Date_of_commissioning, :date
      t.column :Date_of_last_inspection, :date
      t.column :Certificate_of_Operations, :string, :limit => 255 
      t.column :Information, :string, :limit => 500
      t.column :Notes, :string, :limit => 500

      t.timestamps
    end
  end
end


#(BuildingId, Type, Status, EmployeeId, Date_of_last_inspection, Certificate_of_Operations, Information, Notes)
#(22, "colun", "moving", "ep", "20/02/2020", "19/02/2020", "certfic", "func", "ok")

