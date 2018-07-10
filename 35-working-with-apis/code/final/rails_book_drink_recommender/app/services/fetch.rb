class Fetch

  @@nyt_api_key = { 'api-key' => ENV['NYT'] }

  def self.fetch(url, headers_hash = {})
    headers  = { headers: headers_hash }
    safe_url = URI::encode(url)
    response = HTTParty.get(safe_url, headers)
    body     = JSON.parse(response.body)
  end

  def self.get_lists
    @@lists ||= fetch_lists
  end

  def self.fetch_lists
    url  = 'https://api.nytimes.com/svc/books/v3/lists/names.json'
    body = fetch(url, @@nyt_api_key)
    body['results']
  end

  def self.get_books(list)
    list_from_database = List.find_by(list_name_encoded: list)

    if list_from_database
      JSON.parse(list_from_database.json)
    else
      fetch_books(list)
    end
  end

  def self.fetch_books(list)
    url   = "https://api.nytimes.com/svc/books/v3/lists.json?list=#{list}"
    body  = fetch(url, @@nyt_api_key)
    books = body['results']
    List.create!(list_name_encoded: list, json: JSON.generate(books))
    books
  end

  def self.get_book(isbn)
    book = Book.find_by(isbn: isbn)

    if book
      JSON.parse(book.json)
    else
      fetch_book(isbn)
    end
  end

  def self.fetch_book(isbn)
    url  = "https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json?isbn=#{isbn}"
    body = fetch(url, @@nyt_api_key)
    book = body['results'].first
    Book.create!(isbn: isbn, json: JSON.generate(book))
    book
  end

  def self.get_drink(book)
    drink = Drink.find_by(isbn: get_isbn(book))

    if drink
      JSON.parse(drink.json)
    else
      fetch_drink(book)
    end
  end

  def self.fetch_drink(book)
    words = book['description'].split.sort_by(&:length)

    words.reverse_each do |word|
      url    = "http://lcboapi.com/products?q=#{word}"
      body   = fetch(url)
      drinks = body['result']

      if drinks.any?
        Drink.create!(isbn: get_isbn(book), json: JSON.generate(drinks.first))
        return drinks.first
      end
    end

    nil
  end

  def self.get_isbn(book)
    book['isbns'].first.values.first
  end

end
