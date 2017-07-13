require 'sinatra'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  'TODO'
end

get '/contact' do
  'TODO'
end

get '/blog' do
  'TODO'
end

get '/recipes' do
  @recipes = [
    'BBQ Ribs',
    'Avocado Sushi',
    'Gluten Free Pancakes'
  ]

  erb :recipes
end
