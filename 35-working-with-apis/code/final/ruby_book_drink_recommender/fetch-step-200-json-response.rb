require 'httparty'

response = HTTParty.get('http://lcboapi.com/products')

pp response
