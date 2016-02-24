class FavoriteImagesController < ApplicationController
	def new
		@favorite = FavoriteImage.new
	end

	def create 
		if current_user 
			@user = User.find_by(id: current_user.id)
		else
			@user = nil
			redirect_to root_url
			flash[:notice] = "You must sign in to add favorites"
		end
		@favorite = FavoriteImage.new(favorite_images_params)
		if !(FavoriteImage.find_by(image_id: @favorite.image_id, user_id: @favorite.user_id)) && @favorite.save
			redirect_to root_url
			flash[:notice] = "Image saved to your favorites"
		else
			redirect_to root_url
			flash[:notice] = "That image is already in your favorites"
		end
	end

	def index
		@favorite_images = current_user.favorite_images.where(user_id: current_user.id)
		@empty = current_user
	end

	def show
		@user = current_user
		@favorite_image = FavoriteImage.find_by(user_id: params[:user_id], image_id: params[:id])
		@favorite = @user.favorite_images.build()
	end

	private

	def favorite_images_params
		params.require(:favorite_image).permit(:url, :image_id, :user_id)
	end

end
