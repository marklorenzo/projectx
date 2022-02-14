class ApplicationController < ActionController::Base

private

def after_sign_out_path_for(resource_or_scope)
  # redirect_to "http://localhost:3000"
  new_user_session_path
end
end
