require 'httparty'

response = HTTParty.get('http://bitmaker.co')

pp response
