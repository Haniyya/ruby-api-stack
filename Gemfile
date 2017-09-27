# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.4.1'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# Development and configuration
gem 'dotenv'
gem 'rake'

# Dependency management
gem 'dry-container'
gem 'dry-system'

# HTTP handling
gem 'grape'
gem 'rack'

# HTTP Caching
gem 'dalli'
gem 'rack-cache', require: 'rack/cache'
gem 'redis-rack-cache'

# Default db is postgres
gem 'pg'

# gem 'redis'
# gem 'mysql2'
# gem 'sqlite3'

# Persistence
gem 'rom'
gem 'rom-sql'

group :development do
  gem 'guard', require: false
  gem 'rubocop', require: false
end

group :test do
  gem 'rspec'
end

group :production do
end
