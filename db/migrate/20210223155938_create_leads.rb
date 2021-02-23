class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :full_name_of_the_contact
      t.string :company_name
      t.string :email
      t.integer :phone
      t.string :project_name
      t.text :project_description
      t.string :department_in_charge_of_the_elevators
      t.text :message
      t.binary :attached_file
      t.date :date_of_the_contact

      t.timestamps
    end
  end
end
