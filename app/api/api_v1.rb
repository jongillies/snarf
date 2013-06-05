class ApiV1 < Grape::API
  prefix 'api'
  version 'v1', using: :param
  format :json

  mount Acme::Ping
  mount Acme::Raise
  mount Acme::Protected
  mount Acme::Post
end
