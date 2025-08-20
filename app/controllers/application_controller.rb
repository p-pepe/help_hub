class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # def after_sign_in_path_for(resource)
    # dashboard_path # 好きなパスに変更
  # end

end
