module Acme
  class Ping2 < Grape::API
    format :json
    desc "Returns pong2."
    get :ping do
      { :ping => params[:pong] || 'pong2' }
    end
  end
end
