class AdminController < ApplicationController
  before_action :authenticate_user!
  layout 'menu_admin'
  def show
  end

  def users
    if current_user.superadmin?
      @users = User.all
      @currentUser = current_user.email
    else
      redirect_to root_path
    end
  end

end
