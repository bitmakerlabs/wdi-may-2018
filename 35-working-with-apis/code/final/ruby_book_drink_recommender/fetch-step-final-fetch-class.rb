require 'httparty'

class Fetch

  @@nyt_api_key = { 'api-key' => ENV['NYT'] }

  def self.fetch(url, headers_hash = {})
    headers  = { headers: headers_hash }
    safe_url = URI::encode(url)

    puts
    print "Fetching #{safe_url} ... "

    response = HTTParty.get(safe_url, headers)

    puts 'done!'
    puts

    JSON.parse(response.body)
  end

  def self.fetch_lists
    url  = 'https://api.nytimes.com/svc/books/v3/lists/names.json'
    body = fetch(url, @@nyt_api_key)
    body['results']
  end

  def self.fetch_books(list)
    url   = "https://api.nytimes.com/svc/books/v3/lists.json?list=#{list}"
    body  = fetch(url, @@nyt_api_key)
    body['results']
  end

  def self.fetch_book(isbn)
    url  = "https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json?isbn=#{isbn}"
    body = fetch(url, @@nyt_api_key)
    body['results'].first
  end

  def self.fetch_drink(book)
    words = book['description'].split.sort_by(&:length)

    words.reverse_each do |word|
      url    = "http://lcboapi.com/products?q=#{word}"
      body   = fetch(url)
      drinks = body['result']
      return drinks.first if drinks.any?
    end
  end

end

lists = Fetch.fetch_lists

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
books             = Fetch.fetch_books(list_name_encoded)

puts 'Pleases select book:'
puts

books.each_with_index do |book, index|
  title = book['book_details'].first['title']
  puts "#{index}) #{title}"
end

puts
print 'Enter book number > '

book_index = gets.chomp.to_i
isbn       = books[book_index]['isbns'].first.values.first
book       = Fetch.fetch_book(isbn)
drink      = Fetch.fetch_drink(book)

if drink
  puts "We think '#{drink['name']}' would go nicely with '#{book['title']}'"
else
  puts "We couldn't find a drink suggestion for '#{book['title']}'. We suggest you enjoy that book sober."
end

puts
