class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery


  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  def after_sign_out_path_for(user)
  root_path
  end



  private

  def user_not_authorized
    flash[:error] = "You are not authorized to perform this action."
    redirect_to request.headers["Referer"] || root_path
  end

end
