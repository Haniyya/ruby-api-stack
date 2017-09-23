# frozen_string_literal: true
source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

group :devops do
  gem 'dotenv'
  gem 'rake'
end

group :networking do
  gem 'grape'
  gem 'rack'
end

group :persistence do
  # Default db is postgres
  gem 'pg'

  # gem 'redis'
  # gem 'mysql2'
  # gem 'sqlite3'

  # Low level db access with sequel
  gem 'sequel'
end
