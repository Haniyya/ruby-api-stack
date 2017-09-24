# frozen_string_literal: true
source "https://rubygems.org"

ruby '2.4.1'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# Development and configuration
gem 'dotenv'
gem 'rake'

# HTTP handling
gem 'grape'
gem 'rack'

# HTTP Caching
gem 'dalli'
gem 'redis-rack-cache'

# Default db is postgres
gem 'pg'

# gem 'redis'
# gem 'mysql2'
# gem 'sqlite3'

# Low level db access with sequel
gem 'sequel'

group :development do
  gem 'rubocop', require: false
  gem 'guard', require: false
end

group :test do
  gem 'rspec'
end

group :production do
end
