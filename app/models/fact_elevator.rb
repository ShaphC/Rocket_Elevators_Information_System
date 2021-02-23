class FactElevator < ApplicationRecord
    ApplicationRecord.establish_connection(
        { :adapter => 'postgresql',
          :database => 'rocketelevators_development',
          :host => 'localhost',
          :username => 'postgres',
          :password => 'password' }
       )
    belongs_to :dim_customer
end
