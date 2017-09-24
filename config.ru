require_relative 'config/environment.development.rb'

use(Rack::Cache,
    metastore: 'memcached://localhost:11211/meta',
    entitystore: 'redis://localhost:6379/body')
