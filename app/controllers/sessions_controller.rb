class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:user][:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:user][:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      flash[:success] = "#{user.name}, successfully signed in"
      redirect_to '/'
    else
      # If user's login doesn't work, send them back to the login form.
      flash[:danger] = 'Invalid email/password combination'

      render 'new'
      # redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
