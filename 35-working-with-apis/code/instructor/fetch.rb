require 'httparty'

def fetch(url)
  safe_url = URI::encode(url)

  puts
  print "Fetching #{safe_url} ... "

  response = HTTParty.get(safe_url)

  puts 'done!'
  puts

  JSON.parse(response.body)
end

def fetch_drink(book)
  words = book['description'].split.sort_by { |word| word.length }

  words.reverse_each do |word|
    url    = "http://lcboapi.com/products?q=#{word}"
    body   = fetch(url)
    drinks = body['result']
    return drinks.first if drinks.any?
  end
end

headers = { "api-key" => ENV["NYT"] }

result = HTTParty.get('http://api.nytimes.com/svc/books/v3/lists/names.json', headers: headers)

lists = JSON.parse(result.body)

puts "Please choose list:"

lists['results'].each_with_index do |result, index|
  puts "#{index + 1}) #{result['list_name']}"
end

print "Enter List # > "
list_number = gets.to_i
list_index = list_number - 1

list_name_encoded = lists['results'][list_index]['list_name_encoded']

get_books = HTTParty.get("https://api.nytimes.com/svc/books/v3/lists.json?list=#{list_name_encoded}", headers: headers)


puts "Please choose book:"

books = get_books['results']

books.each_with_index do |book, index|
  puts "#{index + 1}) #{book['book_details'].first['title']}"
end

print "Enter Book # > "
book_index = gets.to_i - 1
book = books[book_index]['book_details'].first

drink = fetch_drink(book)


if drink
  puts "We think '#{drink['name']}' would go nicely with '#{book['title']}'"
else
  puts "We couldn't find a drink suggestion for '#{book['title']}'. We suggest you enjoy that book sober."
end
