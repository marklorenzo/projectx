class AdminsController < ApplicationController
  before_action :authenticate_user!

  def index
  	authorize! :read, :Admin
  end

end
