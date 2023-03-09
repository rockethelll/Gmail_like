Rails.application.routes.draw do
  root 'static_pages#index'
  devise_for :users
  resources :emails
  get 'static_pages/index'
  get 'static_pages/secret'
  post 'emails/:id/toggle', to: 'emails#toggle'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
