class AddReferencesToBuildings < ActiveRecord::Migration[5.2]
  def change
    add_reference :buildings, :addresses, foreign_key: true
  end
end
