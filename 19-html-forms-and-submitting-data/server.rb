require './film.rb'
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

get '/films' do
  "GET request: #{params}"
end

post '/films' do
  user_title = params[:title]
  user_description = params[:description]
  user_rating = params[:rating]
  user_available = params[:available]
  user_country = params[:country]

  Film.create(rating: user_rating,
  title: user_title,
  description: user_description,
  country: user_country,
  available: user_available
  )

  redirect to('/')
end

put '/films' do
  "PUT request: #{params}"
end

delete '/films' do
  "DELETE request: #{params}"
end






