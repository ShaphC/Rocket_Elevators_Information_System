class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.int :BatteryId
      t.string :Type
      t.string :Number_of_floors
      t.string :served
      t.string :int
      t.string :Status
      t.string :int
      t.string :Information
      t.string :string
      t.string :Notes
      t.string :string

      t.timestamps
    end
  end
end
