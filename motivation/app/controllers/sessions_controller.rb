class SessionsController < ApplicationController
  before_action :check_current_user, only: [:destroy]

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

  private

    def check_current_user
      @user = User.find(params[:user_id])
      unless current_user?(@user)
        redirect_to(root_url)
        flash[:notice] = "You need to be signed in as that user to perform that action." 
      end
    end
end
