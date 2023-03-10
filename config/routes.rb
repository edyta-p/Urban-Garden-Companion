Rails.application.routes.draw do
  get 'test/compass'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :gardens, only: [:show] do
    member do
      get 'email'
      get 'list'
      post 'send_email'
    end
    resources :build, controller: 'gardens/build'
    resources :plants, only: [:new, :create] do

      collection do
        # get 'categories'
        # get 'choice'
      end
    end
  end

  resources :plants, only: [] do
    member do
      get :plant
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
