class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :account_type)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit( :email, :password, :password_confirmation, :account_type)}
  end

	def after_sign_in_path_for(resource)
    cakes_path
  end
end
