class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by_email(params[:email])
  	if @user && user.authenticate(params[:password])
  		flash.now[:notice] = "Log in successful!"
  		session[:user_id] = user.id
  		redirect_to '/'
  	else
  		flash.now[:notice] = "Unable to login in."
  		render 'new'

  	end
  end

  def destroy
  end
end
