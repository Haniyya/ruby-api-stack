desc 'Loads our .env into ENV'
task :environment do
  puts 'Loading environment...'
  require 'dotenv/load'
end

namespace :db do
  def check_command_exists(cmd)
    unless system("which #{cmd}", out: File::NULL)
      fail "#{cmd} not found. Please install the postgres utilities first."
    end
  end

  desc 'Creates a new database based on the variables in .env'
  task :create => :environment do
    check_command_exists 'createdb'
    puts 'Creating database...'
    puts `createdb -w && echo 'Created db #{ENV['PGDATABASE']}'`
  end

  desc 'Drops the database specified in the variables in .env'
  task :drop => :environment do
    check_command_exists 'dropdb'
    puts 'Dropping database...'
    puts `dropdb #{ENV['PGDATABASE']} -w && echo 'Dropped db #{ENV['PGDATABASE']}'`
  end

  desc 'Resets our database by dropping and creating it again.'
  task :reset => :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
  end
end
