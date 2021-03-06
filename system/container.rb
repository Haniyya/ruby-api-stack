# frozen_string_literal: true

require 'dry/system/container'
require 'bundler/setup'
require 'dotenv/load'

# IoD Container for all kinds of stuff
class App < Dry::System::Container
  configure do |config|
    config.root = Pathname(__FILE__).join('../').realpath.dirname.freeze
    config.auto_register = %w[lib app/concepts lib/persistence]
  end

  load_paths!('lib', 'app/concepts', 'system')
end
