require 'httparty'

def fetch(url)
  puts
  print "Fetching #{url} ... "

  response = HTTParty.get(url)

  puts 'done!'
  puts

  JSON.parse(response.body)
end

url    = 'http://lcboapi.com/products'
result = fetch(url)

pp result
