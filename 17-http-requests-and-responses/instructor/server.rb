require 'sinatra'

# ROUTE = HTTP VERB + PATH

get '/' do
  redirect to('/hello')
end

get '/hello' do
  @current_time = Time.now

  @todo_list = [
    'Water the plants',
    'Feed the cat',
    'Go vote'
  ]

  # Must be the very last line
  # send_file 'views/hello.erb'

  # Must be the very last line
  erb(:hello)
end

get '/goodbye' do
  'Goodbye!'
end
