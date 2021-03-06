require 'api_constraints'

Rails.application.routes.draw do
  apipie

  scope "/sysmapper" do
    namespace :api, defaults: {format: :json} do
      scope module: :v1, constraints: ApiConstraints.new(version: '1', default: true) do
        #Your api routes will go here
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
