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

def fetch_books(list)
  url   = "https://api.nytimes.com/svc/books/v3/lists.json?list=#{list}"
  body  = fetch(url, @nyt_api_key)
  body['results']
end

lists = fetch_lists

puts 'Pleases select list:'
puts

lists.each_with_index do |list, index|
  puts "#{index}) #{list['display_name']}"
end

puts
print 'Enter list number > '

list_index        = gets.chomp.to_i
list              = lists[list_index]
list_name_encoded = list['list_name_encoded']
books             = fetch_books(list_name_encoded)

pp books
