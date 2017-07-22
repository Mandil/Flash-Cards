class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    p user_params
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:notice] = 'user created'

      redirect_to '/'
    else
      flash[:notice] = 'errors'

      redirect_to '/signup'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
