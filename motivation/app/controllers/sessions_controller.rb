class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(email: params[:session][:email])
  	if @user && @user.authenticate(params[:session][:password])
  		flash[:notice] = "Log in successful! Let's get motivated!"
  		log_in(@user)
  		redirect_to @user
  	else
  		flash.now[:notice] = "Unable to login in."
  		render 'new'
  	end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    flash[:notice] = "You have succesfully logged out. Stay motivated!"
    redirect_to "/"
  end
end
