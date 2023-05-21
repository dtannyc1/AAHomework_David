Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"

    namespace :api, defaults: {format: :json} do
        resources(:guests, only: [:index, :show]) {
            resources(:gifts, only: [:index])
        }

        resources(:gifts, only: [:show])

        resources(:parties, only: [:index, :show])
    end
end
