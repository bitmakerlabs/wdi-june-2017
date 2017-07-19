Rails.application.routes.draw do

  # get    'products'          => 'products#index',  as: 'products'
  # post   'products'          => 'products#create'
  # get    'products/new'      => 'products#new',    as: 'new_product'
  # get    'products/:id'      => 'products#show',   as: 'product'
  # get    'products/:id/edit' => 'products#edit',   as: 'edit_product'
  # patch  'products/:id'      => 'products#update'
  # delete 'products/:id'      => 'products#destroy'

  resources :products

end
