class Quote < ApplicationRecord
    ApplicationRecord.establish_connection(
        { :adapter => 'mysql2',
          :database => 'myapp_development',
          :host => 'localhost',
          :username => 'root',
          :password => 'Pa$$w0rd!',
          :socket => "/var/run/mysqld/mysqld.sock"
           },
       )
    #has_one  :user
end
