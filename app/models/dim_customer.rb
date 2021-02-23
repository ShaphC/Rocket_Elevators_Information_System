class DimCustomer < ApplicationRecord
    ApplicationRecord.establish_connection(
        { :adapter => 'postgresql',
          :database => 'rocketelevators_development',
          :host => 'localhost',
          :username => 'postgres',
          :password => 'password' }
       )
    has_many :fact_elevator
end
