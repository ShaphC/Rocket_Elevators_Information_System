class AddDimCustomerReferenceToFactElevator < ActiveRecord::Migration[5.2]
  def change
    add_reference :fact_elevators, :dim_customer, foreign_key: true
  end
end
