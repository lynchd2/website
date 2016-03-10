class UsersController < ApplicationController
  def new
  	@user = User.new
    if params[:favorite_sign_in] == "true" || params[:unmotivational_sign_in]  == "true"
      flash.now[:notice] = "Please sign in or log in to use that feature"
    end
    @params = params
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		session[:user_id] = @user.id
  		flash[:notice] = "User successfully created"
  		redirect_to @user
  	else
  		flash.now[:notice] = "Failed to create user"
      render 'new'
  	end
  end

  def show
    @user = current_user
    @favorite_video = FavoriteVideo.display_random_favorite_video(@user)
    @favorite_image = FavoriteImage.display_random_favorite_image(@user)
    @size = FastImage.size(@favorite_image)
  end

  private

  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
