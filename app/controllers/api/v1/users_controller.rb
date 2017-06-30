class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def show
    user = User.find(params[:id])
    userBooks = user.books
    render json: user.as_json(include: :books)
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :picture, :home_location)
  end

end
