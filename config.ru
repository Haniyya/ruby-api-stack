environment = ENV['APP_ENV'] ||= 'development'

require_relative "config/environment.#{environment}.rb"

use(Rack::Cache,
    metastore: 'memcached://localhost:11211/meta',
    entitystore: 'redis://localhost:6379/body')
