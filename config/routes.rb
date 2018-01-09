require 'api_version_constraint'

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json}, constraints: { subdomain: 'api'}, path: '/' do
    namespace :v1, path: '/', constrains: ApiVersionConstraint.new(version: 1, default: true) do
      resources :users, only: [:show, :create]
    end
  end
end

