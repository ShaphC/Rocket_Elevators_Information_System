class PostgresRecord < ActiveRecord::Base
    self.abstract_class = true
    ActiveRecord::Base.establish_connection YAML.load_file(File.join(Rails.root, "config", "postgres_database.yml"))[Rails.env.to_s]
  end