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
  @recipes = Recipe.all
  erb :recipes
end

get '/recipes/:id' do
  recipe_id = params[:id]
  @recipe = Recipe.find(recipe_id)

  erb :recipe
end

# get 'recipes/salmon_sushi' do
# end
# get 'recipes/buckwheat_pancakes' do
# end
# get 'recipes/breakfast_platter' do
# end
# get 'recipes/cheezburger' do
# end
