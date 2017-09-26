# Main Entry point for application
class MainApi < Grape::API
  format :json
  prefix :api
  version 'v1', using: :path

  get '/' do
    { message: 'Hello, world!' }
  end
end
