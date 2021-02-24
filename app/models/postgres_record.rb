class PostgresRecord < ActiveRecord::Base
    self.abstract_class = true
    establish_connection POSTGRES_CONF
  end