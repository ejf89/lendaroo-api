class Api::V1::BooksController < ApplicationController

  def index
    books = Book.all
    render json: books
  end

  def create
      books = book_params[:books].map do |book|
          book = Book.find_or_create_by(book)
      end

      userBooks = books.map do |book|
      UserBook.create(book_id: book.id, user_id: current_user.id)
    end
    render json: books
  end

  private
  def book_params
      #params.require(:book).permit(:title, :author, :description, :image_url, :rating)
      params.permit!
      #to-do refactor to be more explicid
  end
end
