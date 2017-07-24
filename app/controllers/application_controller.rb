class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  helper_method :current_user
  before_action :user_id


  private

  def authorize_user!
    if !current_user.present?
      render json: {error: 'No user id present'}
    end
  end

  def current_user
      @current_user ||= User.find_by(id: user_id)
  end

  def user_id
    request.headers['authorization'].to_i
  end

end
