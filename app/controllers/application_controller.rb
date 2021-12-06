class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :location, :corp_name, :lcorp_name, :staff_msg, :industry_id, :feature_id])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:nickname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :location, :corp_name, :lcorp_name, :staff_msg, :industry_id, :feature_id])
  end
end