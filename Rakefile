# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

desc "Migrate the database through scripts in db/migrate."
namespace :db do
  task :migrate do
    Rake::Task["db:migrate_mysql"].invoke
    Rake::Task["db:migrate_postgres"].invoke
  end

  task :migrate_mysql do
    ActiveRecord::Base.establish_connection YAML.load_file(File.join(Rails.root, "config", "database.yml"))[Rails.env.to_s]
    ActiveRecord::MigrationContext.new("db/migrate/mysql_migrate").migrate()
  end

  task :migrate_postgres do
    ActiveRecord::Base.establish_connection YAML.load_file(File.join(Rails.root, "config", "postgres_database.yml"))[Rails.env.to_s]
    ActiveRecord::MigrationContext.new("db/migrate/postgres_migrate").migrate()
  end
end