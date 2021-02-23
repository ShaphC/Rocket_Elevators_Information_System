class User < ApplicationRecord
  ApplicationRecord.establish_connection(
      { :adapter => 'mysql2',
        :database => 'myapp_development',
        :host => 'localhost',
        :username => 'root',
        :password => 'Pa$$w0rd!',
        :socket => "/var/run/mysqld/mysqld.sock"
         },
     )
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, # 
         :recoverable, :rememberable, :validatable

  has_one :employee
  has_one :customer
  

  
end
