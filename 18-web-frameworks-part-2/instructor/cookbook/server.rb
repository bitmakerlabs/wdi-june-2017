require 'sinatra'
require_relative 'recipe'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/blog' do
  erb :blog
end

get '/recipes' do
  # @recipes = [
  #   'BBQ Ribs',
  #   'Avocado Sushi',
  #   'Gluten Free Pancakes'
  # ]

  @recipes = Recipe.all

  erb :recipes
end
