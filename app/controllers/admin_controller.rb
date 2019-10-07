class AdminController < ApplicationController
  before_action :authenticate_user!
  def show
  end

  def users
    if current_user.superadmin?
      @users = User.all
    else
      redirect_to root_path
    end
  end

end
