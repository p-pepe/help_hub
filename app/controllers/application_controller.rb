class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    root_path  # 例: GET /mypage が存在しているならOK
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birthday, :gender, :introduction])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :birthday, :gender, :introduction])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
  end

  # def after_sign_in_path_for(resource)
    #dashboard_path
  # end
end