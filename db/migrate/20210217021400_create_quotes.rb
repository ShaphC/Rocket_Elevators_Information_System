class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
        t.column :building_type, :string, :limit => 255
        t.column :nb_app_building, :integer
        t.column :nb_floors_building, :integer
        t.column :nb_dist_businesses , :integer
        t.column :nb_park_spaces , :integer
        t.column :nb_cages_deployed , :integer
        t.column :nb_separate_tenant_companies, :integer
        t.column :nb_occup_floor, :integer
        t.column :product, :string, :limit => 255
    end
  end
end
