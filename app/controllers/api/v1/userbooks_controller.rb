class Api::V1::UserbooksController < ApplicationController

  def index
    userBooks = UserBook.all
    render json: userBooks
  end

  def create
    byebug

    # params[:userbooks].each do |book|
    # end

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
    # params.require(:userbook).permit(:book_id, :user_id)
    params.permit!
  end

end
