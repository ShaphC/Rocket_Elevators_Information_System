class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.int :BuildingId
      t.string :Type
      t.string :Statut
      t.string :EmployeeId
      t.date :Date_de_mise_en_service
      t.date :Date_de_dernière_inspection
      t.string :Certificat_
      t.string :d’opérations
      t.string :Information
      t.string :Note

      t.timestamps
    end
  end
end
