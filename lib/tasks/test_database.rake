namespace :test_database do
  MIGRATIONS_PATH = File.join(::Rails.root.to_s, 'spec', 'ar_migrations')
  
  task :establish_connection do
    database_conf = Rails.configuration.database_configuration["test"]
    ActiveRecord::Base.establish_connection(:adapter => database_conf["adapter"], :database  => database_conf["database"])
  end
  
  task :create_armailer_tables => :establish_connection do
    ActiveRecord::Migrator.migrate(MIGRATIONS_PATH)
  end
  
  task :destroy_armailer_tables => :establish_connection do
    migration_counts = ENV["STEP"] || Dir.entries(MIGRATIONS_PATH).size - 2
    ActiveRecord::Migrator.rollback(MIGRATIONS_PATH, migration_counts.to_i)
  end
end