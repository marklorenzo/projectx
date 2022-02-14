class UsersController < ApplicationController
  before_action :authenticate_user!


  def login
    @current_user = current_user

    if @current_user.role == 'super_admin'
      redirect_to "http://localhost:3000/admin"
    elsif @current_user.role == 'admin'
      redirect_to controller: :admins, action: :index
    else
      redirect_to controller: :member, action: :index
    end
  end
end
