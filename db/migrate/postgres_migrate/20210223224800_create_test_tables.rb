class CreateTestTables < ActiveRecord::Migration[5.2]
  def change
    create_table :test_tables do |t|

      t.timestamps
    end
  end
end
