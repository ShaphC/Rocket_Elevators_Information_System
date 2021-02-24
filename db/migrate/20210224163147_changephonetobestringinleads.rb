class Changephonetobestringinleads < ActiveRecord::Migration[5.2]
  def change
    change_column :Buildings, :phone_number_of_the_building_administrator, :string
  end
end
