Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get     '/sign_up',       to: 'users#new'
  post    '/sign_up',       to: 'users#create'
  post    '/login',         to: 'sessions#create'
  get     '/login',         to: 'sessions#new'
  delete  '/logout',        to: 'sessions#destroy'

  resources :users

  resources :account_activations, only: [:edit]

  resources :password_resets,     only: [:new, :create, :edit, :update]
end
