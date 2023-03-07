Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :gardens, only: [:show]
  resources :onboarding
  # Defines the root path route ("/")
  # root "articles#index"
end
