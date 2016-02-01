class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(email: params[:session][:email])
  	if @user && @user.authenticate(params[:session][:password])
  		flash[:notice] = "Log in successful!"
  		log_in(@user)
  		redirect_to '/'
  	else
  		flash.now[:notice] = "Unable to login in."
  		render 'new'

  	end
  end

  def destroy
  end
end
