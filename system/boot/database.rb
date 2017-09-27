App.finalize(:db) do |container|
  init do
    require 'rom-sql'
    require 'rom'

    config = {
      host:     ENV['PGHOST'] || 'localhost',
      port:     ENV['PGPORT'] || '5432',
      user:     ENV['PGUSER'],
      pass:     ENV['PGPASSWORD'],
      database: ENV['PGDATABASE']
    }.freeze

    url = format(
      'postgres://%<user>:%<pass>@%<host>:%<port>/%<database>', config
    )

    rom_config = ROM::Configuration.new(:sql, url)

    container.register(:config, rom_config)
    container.register(:url, url)
  end

  start do
    config = container['db.config']
    config.auto_registration(container.root.join('lib/persistence'))

    container.register(:rom, ROM.container(config))
  end
end
