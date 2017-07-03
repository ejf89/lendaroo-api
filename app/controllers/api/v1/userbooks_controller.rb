class Api::V1::UserbooksController < ApplicationController

  def index
    userBooks = UserBook.all
    render json: userBooks
  end

  def create
    userBook = UserBook.create(userbook_params)
    newBook = Book.find(userBook.book_id)
    render json: newBook
  end

  def destroy
    userbook = UserBook.find(params[:id])
    userbook.destroy
    render json: userbook
  end

  private
  def userbook_params
    params.require(:userbook).permit(:book_id, :user_id)
  end

end
