require 'httparty'

@nyt_api_key = { 'api-key' => ENV['NYT'] }

def fetch(url, headers_hash = {})
  headers  = { headers: headers_hash }
  safe_url = URI::encode(url)

  puts
  print "Fetching #{safe_url} ... "

  response = HTTParty.get(safe_url, headers)

  puts 'done!'
  puts

  JSON.parse(response.body)
end

def fetch_lists
  url  = 'https://api.nytimes.com/svc/books/v3/lists/names.json'
  body = fetch(url, @nyt_api_key)
  body['results']
end

lists = fetch_lists

puts 'Pleases select list:'
puts

lists.each_with_index do |list, index|
  puts "#{index}) #{list['display_name']}"
end

pp lists
