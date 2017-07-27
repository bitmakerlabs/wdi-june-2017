Rails.application.routes.draw do
  resource :users, only: %i(create new)

  root 'rides#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
