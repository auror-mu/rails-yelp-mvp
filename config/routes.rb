Rails.application.routes.draw do
  get 'restaurants/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
Rails.application.routes.draw do
  get 'restaurants/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
