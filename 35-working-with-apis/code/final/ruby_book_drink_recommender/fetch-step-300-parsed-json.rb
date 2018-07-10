require 'httparty'

response = HTTParty.get('http://lcboapi.com/products')
result   = JSON.parse(response.body)

pp result
