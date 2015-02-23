class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
  @user = current_user.users.build
end

  def edit
  end


 private
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:avatar, :email)
    end


end