class Api::V1::UserbooksController < ApplicationController

  def index
    userBooks = UserBook.all
    render json: userBooks
  end

  def create
    userBook = UserBook.create(userbook_params)
    render json: userBook
  end

  private
  def userbook_params
    params.require(:userbook).permit(:book_id, :user_id)
  end

end
