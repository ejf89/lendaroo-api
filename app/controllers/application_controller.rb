class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  private

  def authorize_user!
    if !current_user.present?
      render json: {error: 'No user id present'}
    end
  end

  def current_user
    3
  end

end
