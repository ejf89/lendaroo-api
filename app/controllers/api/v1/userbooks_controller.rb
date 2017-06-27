class Api::V1::UserBooksController < ApplicationController

  def index
    userBooks = UserBook.all
    render json: userBooks
  end


end
