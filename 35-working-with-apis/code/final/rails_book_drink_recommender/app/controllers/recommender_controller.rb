class RecommenderController < ApplicationController

  def choose_list
    @lists = Fetch.get_lists
  end

  def choose_book
    @books = Fetch.get_books(params[:list])
  end

  def recommendation
    @book            = Fetch.get_book(params[:isbn])
    @drink           = Fetch.get_drink(@book)
    @drink_image_url = @drink['image_url'] if @drink
    @book_image_url  = "http://covers.openlibrary.org/b/isbn/#{@book['isbns'].first.values.first}-L.jpg"

    respond_to do |format|
      format.html
      format.json { render json: recommendation_hash }
      format.xml  { render xml:  recommendation_hash }
    end
  end

  private

  def recommendation_hash
    {
      drink:           @drink['name'],
      title:           @book['title'],
      drink_image_url: @drink['image_url'],
      book_image_url:  "http://covers.openlibrary.org/b/isbn/#{@book['isbns'].first.values.first}-L.jpg"
    }
  end

end
