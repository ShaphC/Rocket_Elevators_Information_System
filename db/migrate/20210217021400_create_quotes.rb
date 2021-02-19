class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      
        t.column :name, :string, :limit => 100   
        t.column :email, :string, :limit => 200  
        t.column :phone, :string, :limit => 20  
        t.column :bType, :string, :limit => 255 
        t.column :numApart, :integer    
        t.column :numFloor, :integer    
        t.column :numBase, :integer    
        t.column :numBusi, :integer    
        t.column :numPark, :integer     
        t.column :numCage, :integer     
        t.column :occpFloor, :integer
        t.column :numHour, :integer
        t.column :numCorp, :integer 
        t.column :product, :string, :limit => 255
        t.column :numElev, :string, :limit => 255
        t.column :unitP, :string, :limit => 255 
        t.column :totalP, :string, :limit => 255 
        t.column :instalP, :string, :limit => 255 
        t.column :finalP, :string, :limit => 255

    end
  end
end

