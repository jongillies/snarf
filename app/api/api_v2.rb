class ApiV2 < Grape::API
  prefix 'api'
  version 'v2', using: :path
  format :json

  mount Acme::Ping2
  mount Acme::Raise
  mount Acme::Protected
  mount Acme::Post
end
