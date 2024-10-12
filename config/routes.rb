Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  root "posts#index"

  resource :session, only: [:new, :create, :destroy]

  resource :user, only: [:new, :create]

  get "gordo_sign_in", to: "sessions#new"


  # Defines the root path route ("/")
  # root "posts#index"
end
