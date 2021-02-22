class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.int :ColumnId
      t.string :Serial_number
      t.string :Model
      t.string :Type
      t.date :Date_of_commissioning
      t.date :Date_of_last_inspection
      t.string :Inspection_certificate
      t.string :Information
      t.string :Notes

      t.timestamps
    end
  end
end
