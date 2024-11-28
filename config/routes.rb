Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments, only: :create
    resources :likes, only: :create
  end
  # get '/logout', to: 'sessions#destroy', as: :logout
  root "posts#index"
end
