Rails.application.routes.draw do

  get '/pages/new' => 'pages#new'
  get '/pages' => 'pages#index'
  get ':id'    => 'pages#show'
  post '/pages' => 'pages#create'

end
