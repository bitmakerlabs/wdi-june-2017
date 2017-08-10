Rails.application.routes.draw do
  resources :products, only: [:index]

  resources :films, only: [:index]

  resources :example, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
