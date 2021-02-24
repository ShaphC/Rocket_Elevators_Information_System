class ChangePhoneNumberOfTheBuildingAdministratorInBuildings < ActiveRecord::Migration[5.2]
  def change
    change_column :buildings, :phone_number_of_the_building_administrator, :string
  end
end
