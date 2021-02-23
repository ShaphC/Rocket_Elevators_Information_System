class Employee < ApplicationRecord
    ApplicationRecord.establish_connection(
        { :adapter => 'mysql2',
          :database => 'rocketelevators_development',
          :host => 'localhost',
          :username => 'root',
          :password => 'password' }
       )
    belongs_to :user
end
