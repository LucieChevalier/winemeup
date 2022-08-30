Rails.application.routes.draw do
  get 'bottles/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events, only: %i[index show]

  resources :bottles, only: %i[create]


  namespace :host do
    resources :events, only: %i[index new create edit update]
  end

end
