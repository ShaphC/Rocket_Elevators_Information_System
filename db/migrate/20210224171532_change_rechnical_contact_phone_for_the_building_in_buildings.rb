class ChangeRechnicalContactPhoneForTheBuildingInBuildings < ActiveRecord::Migration[5.2]
  def change
    change_column :buildings, :rechnical_contact_phone_for_the_building, :string
  end
end
