Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :tasks, only: %w(index)

  namespace :api do
    resources :tasks, only: %w(index)
  end
end
