class ApiV2 < Grape::API
  prefix 'api'
  version 'v2', using: :param
  format :json

  mount Acme::Ping2
  mount Acme::Raise
  mount Acme::Protected
  mount Acme::Post
end
