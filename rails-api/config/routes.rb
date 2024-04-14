Rails.application.routes.draw do
  get 'user_and_shop/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :todos do
    resources :items
  end
  resources :users
  resources :companies

  get '/user_and_shop', to: 'user_and_shop#index'
  get '/user_and_shop/:id', to: 'user_and_shop#show'

end
