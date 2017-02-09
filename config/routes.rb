Rails.application.routes.draw do
  get 'authorbooks/index'

  get 'authorbooks/show'

  resources :categories
  resources :books
  resources :authors

  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
