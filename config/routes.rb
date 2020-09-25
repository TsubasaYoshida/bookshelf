Rails.application.routes.draw do
  resources :reviews
  resources :books
  resources :done_items
  devise_for :users
  root to: 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
