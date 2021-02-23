class AddBaterrieRefToColumn < ActiveRecord::Migration[5.2]
  def change
    add_reference :columns, :batterie, foreign_key: true
  end
end
