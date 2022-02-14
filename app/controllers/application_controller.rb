class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end
private

def after_sign_out_path_for(resource_or_scope)
  # redirect_to "http://localhost:3000"
  new_user_session_path
end
end
