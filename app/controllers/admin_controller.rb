class AdminController < ApplicationController

  before_action :authenticate_user!
  layout 'menu_admin'

  def users
    if current_user.superadmin?
      @users = User.all
      @currentUser = current_user.email
    else
      redirect_to root_path
    end
  end

  def show

  end
  #
  # def update
  #   @user = User.find(params[:id])
  #
  #   if @user.update(user_params)
  #     redirect_to @user
  #   else
  #     render 'edit'
  #   end
  # end
  #
  # def edit
  #   @title = 'Admin - Editar User'
  #   @user = User.find(params[:id])
  # end
  #
  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #
  #   redirect_to users_path
  # end
  #
  # private
  #
  # def user_params
  #   params.require(:user).permit(:role, :email)
  # end

end
