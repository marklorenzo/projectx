class MemberController < ApplicationController
  before_action :authenticate_user!

  def index
  	authorize! :read, :Member
  	@current_user = current_user
  end

end
