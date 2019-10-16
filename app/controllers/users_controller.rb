class UsersController < AdminController

  layout 'menu_admin'

  def show
    @user = User.find(params[:id])
  end


  def edit
     @user = User.find(params[:id])
   end

   def update
     @user = User.find(params[:id])
     if @user.update(user_params)
       redirect_to admin_path
     else
       render 'edit'
     end
   end

   def destroy
     @user = User.find(params[:id])
     @user.destroy

     redirect_to admin_users_path
   end

   private
   def user_params
     params.require(:user).permit(:id, :name, :role, :email, :update_at, :created_at)
   end
end