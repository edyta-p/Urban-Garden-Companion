Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :gardens, only: [:show] do
    member do
      get 'email'
    end
    resources :build, controller: 'gardens/build'
    resources :plants, only: [:new, :create] do
      collection do
        get 'categories'
      end
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
