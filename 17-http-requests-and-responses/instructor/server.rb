require 'sinatra'

# ROUTE : request method + url

get '/' do
  redirect to('/hello')
end

get '/hello' do
  #send_file 'views/hello.html'

  @title = 'My To Do List'
  @current_time = Time.now
  @todo_list = [
    'Water the plants',
    'Exercise',
    'Eat Breakfast'
  ]

  # Must be the last line!
  erb :hello
end

get '/goodbye' do
  'See you next time!'
end
