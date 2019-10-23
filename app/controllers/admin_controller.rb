class AdminController < ApplicationController

  before_action :authenticate_user!
  before_action :authorize
  layout 'menu_admin'

  # def users
  #   if current_user.superadmin?
  #     @users = User.all
  #   else
  #     redirect_to root_path
  #   end
  # end

  def show
  end

  protected
  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  end

  def authorize
    unless current_user.admin?
      redirect_to root_path
      return
    end
  end
end
