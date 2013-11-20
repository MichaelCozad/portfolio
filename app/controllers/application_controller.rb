class ApplicationController < ActionController::Base
  before_filter :set_locale

  include Pundit
  protect_from_forgery


  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  def after_sign_out_path_for(user)
  root_path
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    { :locale => I18n.locale }
  end


  private

  def user_not_authorized
    flash[:error] = "You are not authorized to perform this action."
    redirect_to request.headers["Referer"] || root_path
  end

end
