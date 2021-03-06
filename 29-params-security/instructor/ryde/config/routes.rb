Rails.application.routes.draw do
  resource :users, only: %i(create new edit update)
  resource :sessions, only: %i(create new destroy)

  resources :rides, only: %i(index show)

  post 'rides/search'

  root 'rides#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
