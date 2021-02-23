class Quote < ApplicationRecord
    ApplicationRecord.establish_connection(
        { :adapter => 'mysql2',
          :database => 'rocketelevators_development',
          :host => 'localhost',
          :username => 'root',
          :password => 'password' }
       )
    #has_one  :user
end
