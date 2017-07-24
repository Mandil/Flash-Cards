class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:success] = "User successfully created..."
      redirect_to login_path
    else
      flash[:notice] = "errors"
      redirect_to signup_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
